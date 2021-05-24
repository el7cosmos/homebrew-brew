class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "3a6aa7fe1a3081d84d0fe98a945586a5e3bbd2b9e862dc3a4225d34900a5c359"
  license "MIT"

  livecheck do
    url :stable
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "d9ac3b5aa1c974d4eb8a15f42d1e50b9f5bf0125236397aa329ce158d849fefb"
    sha256 cellar: :any_skip_relocation, catalina: "03d4579cfd5fb7450834916c75cc4ea8859293bb7c11f2ff13817f2e951c0fd6"
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
