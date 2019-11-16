class Deployer < Formula
  desc "A deployment tool for PHP"
  homepage "https://deployer.org/"
  url "https://deployer.org/releases/v6.6.0/deployer.phar"
  sha256 "37a5478689477b04c7433d62f97e5727c6a0683c4e08b1959ff0d20c64eab28a"
  depends_on "php"

  def install
    bin.install "deployer.phar" => "dep"
  end

  test do
    system "#{bin}/dep", "--version"
  end
end
