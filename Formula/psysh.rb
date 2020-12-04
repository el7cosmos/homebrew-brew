class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.5/psysh-v0.10.5.tar.gz"
  sha256 "49b2ac8a7cc5e4d18f9b631d5118a8bd01edfa172c194f8985a52a7dc766210a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
