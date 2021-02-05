class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.2.tar.gz"
  sha256 "cb982e2c161663bf8c1921d761b368ca1b5d50d16d007ffcce8a118e5269e9c0"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://github.com/el7cosmos/homebrew-brew/releases/download/talenta-0.4.2"
    sha256 cellar: :any_skip_relocation, big_sur: "60c76680ac0549490451f9e094a753cafe5560eaf9ffc996f9379bf294a85255"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
