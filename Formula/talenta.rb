class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.1.0/talenta-0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "0e4546e970cad070efb5747f3b727e35938142811351f3f1450eb0367215105d"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
