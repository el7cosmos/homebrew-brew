class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.5.0.tar.gz"
  sha256 "c3db7fc46b99a7c92c2f5b41273bae380fe9c4b3137cc62c053733ac26e20688"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew/talenta"
    sha256 cellar: :any_skip_relocation, big_sur:  "4bb8e6318d0a352da4d406024377ee772f7da81ecb4fc21b08da56610d0ee06b"
    sha256 cellar: :any_skip_relocation, catalina: "c87aeb5e0eebabbbd3edfec05defc36573dadda3a5eb3226002e2ca23e877d69"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
