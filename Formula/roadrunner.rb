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
    sha256 cellar: :any_skip_relocation, big_sur:  "8cb8c09dec75c37df5136b66cf5de2ad3db25459e3c21453552e8f84baab2c22"
    sha256 cellar: :any_skip_relocation, catalina: "5eec5adee3a26c00e723277df4d2c91314c078c960ced72f885fc9a4141a4b1f"
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
