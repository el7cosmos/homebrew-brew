class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.7/psysh-v0.10.7.tar.gz"
  sha256 "fc16ed778ad1d4b22ce35165981a9f985b169e11f8681129d432181b23b05f74"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
