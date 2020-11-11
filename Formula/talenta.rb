class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.4.0/talenta-0.4.0-x86_64-apple-darwin.tar.gz"
  sha256 "3fd4b5a759b8126d0791f7ffaffadb6a8340fd728d2a3bd1c638755d005a3514"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
