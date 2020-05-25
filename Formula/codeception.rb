class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20200524/codecept.phar"
  sha256 "78267afc1003bc02807a76f8cf881f869b7f797e1ad6575c7efab883adccc88d"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
