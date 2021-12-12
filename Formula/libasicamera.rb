class Libasicamera < Formula
  desc "Library for ASI Camera"
  homepage "https://astronomy-imaging-camera.com/"
  url "https://download.astronomy-imaging-camera.com/download/asi-camera-sdk-linux-mac/?wpdmdl=381"
  version "1.20.3"
  sha256 "bc07acf5064e4def2af79c28cd026b1d6c62dbf77b674b0fbf545d005bc3294a"

  livecheck do
    url "https://astronomy-imaging-camera.com/software/change_log/change_ASISDK_Unix.txt"
    regex(/V(\d+(?:\.\d+)+)/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any, big_sur:  "ec9a05bf8606f21f2189c84e2dcc3eae381613570b829f1666def3b018c6baa0"
    sha256 cellar: :any, catalina: "fc14ef99647452b785b2ebf53a99993cfc9ea527f1e75ac37aed6743f14f4ddd"
  end

  depends_on "libusb"

  def install
    include.install "include/ASICamera2.h"
    lib.install "lib/mac/libASICamera2.a"
    lib.install "lib/mac/libASICamera2.dylib.#{version}" => "libASICamera2-#{version}.dylib"
    lib.install_symlink lib / "libASICamera2-#{version}.dylib" => "libASICamera2.dylib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libasicamera`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
