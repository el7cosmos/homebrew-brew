class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.8/psysh-v0.9.8.tar.gz"
  sha256 "eddb875fe6fb76291a98756dd22d3f5dd4558c6298d42a151475d20b015d4977"
  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
