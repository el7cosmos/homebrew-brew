class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.11.5/psysh-v0.11.5.tar.gz"
  sha256 "382656cf87a6d4c82ff119373b600fc04e98df45a6743d544edb3253f786c7e7"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
