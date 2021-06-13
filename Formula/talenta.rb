class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.5.0.tar.gz"
  sha256 "c3db7fc46b99a7c92c2f5b41273bae380fe9c4b3137cc62c053733ac26e20688"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "f819d22f8b7bed30d6b9faac41e44b2a949c908f40f565a7dc72f14751ba0c99"
    sha256 cellar: :any_skip_relocation, catalina: "96f5584873b1d6155bd0b7e69d714b971a92a94e74dd33065ba12e557618be47"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
