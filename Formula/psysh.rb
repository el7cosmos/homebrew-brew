class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.4/psysh-v0.10.4.tar.gz"
  sha256 "c12103b0e36b67776dbcd02966a026fb5c90ef4f26ffbf7df27a89f07381bd00"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
