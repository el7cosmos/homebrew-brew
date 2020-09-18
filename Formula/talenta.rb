class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.2.2/talenta-0.2.2-x86_64-apple-darwin.tar.gz"
  sha256 "a252d04e94a1dc892adc3ceb5eb7cdf791ccd61084fbfa1e25c0b7d42c961c68"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
