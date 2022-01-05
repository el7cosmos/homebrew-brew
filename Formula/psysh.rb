class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.11.1/psysh-v0.11.1.tar.gz"
  sha256 "3a211723b015702e6e74849f278d76f393812fcda649dd576f9aa156d1b8a7d2"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
