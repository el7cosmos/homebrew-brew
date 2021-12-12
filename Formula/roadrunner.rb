class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.6.4.tar.gz"
  sha256 "a53d7d276aba16427462943a2f1e3ca2338e7bbd2ce129ef10d8b8dc2b666daf"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "c56d6efdf55ca849c9a50b04001b02c5d85bd5cd97993484c502e1fd23252e68"
    sha256 cellar: :any_skip_relocation, catalina: "c6ca6377441453c37bcd1a920a50331c51e76c1e27ea480afae7e8a58604dd21"
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
