class Roadrunner < Formula
  desc "High-performance PHP application server, load-balancer & process manager"
  homepage "https://roadrunner.dev/"
  url "https://github.com/spiral/roadrunner-binary/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "982e8c4b3aa94029e42b6a093bbb372887af474f77b6cd551ce6d4cef1ec4649"
  license "MIT"

  livecheck do
    url :stable
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "c80b08abe35ef3004f1a20144012d3a77c1dc952eff4f9d64a706ef2bf7b4812"
    sha256 cellar: :any_skip_relocation, catalina: "c17c51ecfc8640fd127c9fbf7dbb72b8e710eed1477dbb591b379c5fe300c22a"
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
