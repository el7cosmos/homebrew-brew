class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.11.0/psysh-v0.11.0.tar.gz"
  sha256 "50801e3956ca59c7cd5776d76818642b4eb07b386d8a0f1a0597c1dbbba6c055"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
