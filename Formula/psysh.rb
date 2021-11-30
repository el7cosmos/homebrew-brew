class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.12/psysh-v0.10.12.tar.gz"
  sha256 "509e383e055d5f0fbe81f2998014e33811518f718bd16501ec8d10a5dceb8a3c"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
