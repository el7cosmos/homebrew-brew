class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.3/psysh-v0.9.3.tar.gz"
  sha256 "c20b3d6f124f0df61553183552c3774d5eabba6f43f97c5ab12c828d1216b0b6"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
