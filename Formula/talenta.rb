class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.4.tar.gz"
  sha256 "5433870a955d6dbd2bfbbda3b2064f8123e7f111a780a4dbaafcd4d90aa18784"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://github.com/el7cosmos/homebrew-brew/releases/download/talenta-0.4.3"
    sha256 cellar: :any_skip_relocation, big_sur: "c156539ccec1a7c976b7bba544903fee830db64f77980d0723e5a5494a7222fd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
