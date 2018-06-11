class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.6/psysh-v0.9.6.tar.gz"
  sha256 "86cd2248fc10fbc9f43aaa670bb425f0856be53447627addad49887dacaf2c1a"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
