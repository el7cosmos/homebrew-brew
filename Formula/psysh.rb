class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.11.4/psysh-v0.11.4.tar.gz"
  sha256 "79a06a38b57ac60c865dddea4c0fb817219e7d9721ac0d90759e00594ee5eb8b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
