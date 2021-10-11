class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.4.2.tar.gz"
  sha256 "2cd509d4252be534c48d5fc6b1be0fe59c1d2bf6e31c39ae5273f17cd9bba029"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "715ef6ea04a38bb6562f71a1b887b8b7b90b751b3dec010ff1ac24ec9646c300"
    sha256 cellar: :any_skip_relocation, catalina: "f89920faf1ff00acfb9bc18c6ffe0e7f0f556c70bc2e7df3a289b65feaa8b5f3"
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
