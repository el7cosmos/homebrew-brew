class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "381d83b48c0403fd3dccf26002d6d87a64fe7142819f1bb953bdf1dd60c230de"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "18c0d960076c9ac150e28a84cb909a3499b7d8484a675f4ac20ded666db3131b"
    sha256 cellar: :any_skip_relocation, catalina: "70a33e4649b767f66605552fe9254c4cea5a693383d3582a22af54a6bf7c5515"
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
