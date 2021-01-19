class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.6/psysh-v0.10.6.tar.gz"
  sha256 "bcad015a7bc2c41615a6ee063539dd1e8c8b50128b23fd385fd5ea7138f4718c"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
