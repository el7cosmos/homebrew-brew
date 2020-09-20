class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/releases/download/0.3.0/talenta-0.3.0-x86_64-apple-darwin.tar.gz"
  sha256 "4dc43e10a2f7f644eaf6c430c33d90b2d711cfbd667dd22bc08ac1204287fa1f"
  license any_of: %w[MIT Apache-2.0]

  def install
    bin.install "talenta"
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
