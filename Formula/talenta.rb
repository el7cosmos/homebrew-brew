class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.2.0/talenta-0.2.0-x86_64-apple-darwin.tar.gz"
  sha256 "ad6895ec2aa9472ed63475f2102dc15fb44a020f2f485f5379627b573268334d"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
