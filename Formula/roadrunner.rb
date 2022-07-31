class Roadrunner < Formula
  desc "🤯 High-performance PHP application server, process manager written in Go"
  homepage "https://roadrunner.dev"
  url "https://github.com/roadrunner-server/roadrunner/archive/refs/tags/v2.10.7.tar.gz"
  sha256 "d74851a0f9cb207a782e47c63c008c3bd87e32ca701427e8914a04b164039c50"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, monterey: "ccd0a61f271c78000ebf2d39377e62f35439d68ffabf7e43b11ac909ad1d06c8"
    sha256 cellar: :any_skip_relocation, big_sur:  "2c2c3fe491611e2516f9dab93c9f46bac5840b9bafe83731bc85045757a18ad8"
    sha256 cellar: :any_skip_relocation, catalina: "2f1b4635d7dfd6bd4403a6993ae26b37bbe7068c9025af1a54cd144f1c04245c"
  end

  depends_on "go" => :build

  def install
    system "go",
           "build",
           *std_go_args(ldflags: "-s -X github.com/roadrunner-server/roadrunner/v2/internal/meta.version=#{version} -X github.com/roadrunner-server/roadrunner/v2/internal/meta.buildTime=#{Time.now.iso8601}"),
           "./cmd/rr"
  end

  test do
    system "#{bin}/roadrunner", "-v"
  end
end
