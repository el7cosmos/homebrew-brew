class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.6.6.tar.gz"
  sha256 "6aed8ca0b8eca5789734b26db1716a71c95fec6f16b7407c7a3a320d81e362b8"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "7f0da52d6e25dddae1da19acaca1c1126b60cdcddaca61a404e4d750837c9707"
    sha256 cellar: :any_skip_relocation, catalina: "7afc2bdf5eaa010f039e3923989d0795c0f3cc0e3e0f84c743cbb506c1350fa9"
  end

  depends_on "go" => :build

  def install
    system "go",
           "build",
           *std_go_args(ldflags: "-s -X github.com/spiral/roadrunner-binary/v2/internal/meta.version=#{version} -X github.com/spiral/roadrunner-binary/v2/internal/meta.buildTime=#{Time.now.iso8601}"),
           "./cmd/rr"
  end

  test do
    system "#{bin}/roadrunner", "-v"
  end
end
