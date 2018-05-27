class Psysh < Formula
  desc "Runtime developer console, interactive debugger and REPL for PHP"
  homepage "https://psysh.org"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.4/psysh-v0.9.4.tar.gz"
  sha256 "b891e8c306fba92b7ad630d1f5d9a6a6ef98cbb0533a17fd7ddf8e78cda0f140"

  def install
    bin.install "psysh"
  end

  test do
    system "#{bin}/psysh", "--version"
  end
end
