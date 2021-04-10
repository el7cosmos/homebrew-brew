class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.10.8/psysh-v0.10.8.tar.gz"
  sha256 "ea8a5204a479788e4795a272e00f7826bc587d4b4208d565ca7b662d96d67ce1"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
