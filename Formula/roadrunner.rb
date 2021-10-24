class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.5.2.tar.gz"
  sha256 "bf9da2b20f49db395d29887327f742962f53a99a1c923995aa7ac6228095d02b"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "7ae11490259d02806ec48ba9afd7c2d3ee6c413394b562da74bafefb2ab998a8"
    sha256 cellar: :any_skip_relocation, catalina: "8f7ccfdd68d1657fe4ad5eb7c17ba2d3ff13eec90e01a471b2f03e2d5290d30f"
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
