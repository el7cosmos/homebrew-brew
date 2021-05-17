class Libasicamera < Formula
  desc "Library for ASI Camera"
  homepage "https://astronomy-imaging-camera.com/"
  url "https://download.astronomy-imaging-camera.com/download/asi-camera-sdk-linux-mac/?wpdmdl=381"
  version "1.18"
  sha256 "919b05a3c7b4d57424057f08596e13f46e85ea8a67e83613ee8ba26ae88ae833"

  livecheck do
    url "https://astronomy-imaging-camera.com/software-drivers"
    regex(/href=.*?ASI_linux_mac_SDK_V?(\d+(?:\.\d+)+)\.t/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew/libasicamera"
    sha256 cellar: :any, big_sur: "78f5b4ef48bfd644d91ff67494ab146b8d977a34d206d72b8c3ed9c829e05536"
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
