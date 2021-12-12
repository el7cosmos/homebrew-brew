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
    sha256 cellar: :any_skip_relocation, big_sur:  "06d980b62e522aac1d2ba08101579d5811c5bbf42efe8320d2d07eb4a5d6fbb7"
    sha256 cellar: :any_skip_relocation, catalina: "1917e854dc9a5a8961efaa7e35716f08158614a77ceb317af970fe7050908f56"
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
