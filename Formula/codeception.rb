class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/codecept.phar"
  version "3.0.1"
  sha256 "2cc01f8c7e9e8dc4840e7be9d90064ed1e16502d3a9db3493521dca1fcdc3617"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
