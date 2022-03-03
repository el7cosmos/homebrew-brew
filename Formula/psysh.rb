class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.11.2/psysh-v0.11.2.tar.gz"
  sha256 "bbb553959c3d93b54358a18affc7f3170d1b8cdbba0cc1aca109c379d1e00968"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
