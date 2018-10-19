class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.9/psysh-v0.9.9.tar.gz"
  sha256 "dc466f88dbb00140d95c23f8826e9d235ed407d1360dc35cf90273a7c08acb4e"
  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
