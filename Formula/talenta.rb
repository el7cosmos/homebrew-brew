class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.0.tar.gz"
  sha256 "7a42cacbd7e09a92d977a124752d112ac1a4f5d9c92ec6770dd0f8fb5418bd42"
  license any_of: %w[MIT Apache-2.0]
  revision 1

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
