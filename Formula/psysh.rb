class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.9/psysh-v0.10.9.tar.gz"
  sha256 "32b9da63a807d983f431ac33c38f6c7d56fdca92f5a479afe7dbbfc53d4cde20"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
