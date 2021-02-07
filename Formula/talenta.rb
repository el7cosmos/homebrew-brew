class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.3.tar.gz"
  sha256 "7ebc02f806b8f418b036a8045f683a2c4d561e1cffb2b137e2c0acf7eabe2b0b"
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
