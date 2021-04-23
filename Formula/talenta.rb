class Talenta < Formula
  desc "Command-line interface for Talenta"
  homepage "https://github.com/el7cosmos/talenta"
  url "https://github.com/el7cosmos/talenta/archive/0.4.5.tar.gz"
  sha256 "66a1d8a4d9d0013994b88d706d0cef4c8b543f3a89a1077e99de731e9bd0a6b6"
  license any_of: %w[MIT Apache-2.0]

  bottle do
    root_url "https://github.com/el7cosmos/homebrew-brew/releases/download/talenta-0.4.4"
    sha256 cellar: :any_skip_relocation, big_sur:  "88d414995c2aa59157e55b6333270616bd85bcbd504b14854b4918cc3dfeddfd"
    sha256 cellar: :any_skip_relocation, catalina: "ab3b50bced021f229ab703b3688b3f9a04903a7bc754b3d39a8bfd915f434f9b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/talenta", "--version"
  end
end
