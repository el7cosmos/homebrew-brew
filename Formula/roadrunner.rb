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
    sha256 cellar: :any_skip_relocation, big_sur:  "15e1bb26a7b3fcc34fdfdd05966238e7326e5c0633b7e4a9bf8734134394bc7d"
    sha256 cellar: :any_skip_relocation, catalina: "f107d93b525b6e93e944783fa66278449cf0078b1d47dea667ed8737da8525c0"
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
