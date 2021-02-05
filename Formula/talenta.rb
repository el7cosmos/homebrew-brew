class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.2.tar.gz"
  sha256 "cb982e2c161663bf8c1921d761b368ca1b5d50d16d007ffcce8a118e5269e9c0"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://dl.bintray.com/el7cosmos/bottle-brew"
    sha256 cellar: :any_skip_relocation, big_sur: "0c16b9e4bf32ffc24ab6e2a4d5e4b6f3c5b864e076a60745fe41ef9b337fb3d1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
