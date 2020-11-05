class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.3.2/talenta-0.3.2-x86_64-apple-darwin.tar.gz"
  sha256 "55df2f6591af1f3f6b4343d7066ea86af61ff347fd8432aa68bd75b8f7f99eaf"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
