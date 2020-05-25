class Libasicamera < Formula
  desc "Library for ASI Camera"
  homepage "https://astronomy-imaging-camera.com/"
  url "https://astronomy-imaging-camera.com/software/ASI_linux_mac_SDK_V1.15.0430.tar.bz2"
  sha256 "cf1f9c152103045fbca0167daac5f4222cbce1747f8d5ff117c6ab732b7feb7e"
  depends_on "libusb"

  def install
    include.install "include/ASICamera2.h"
    lib.install "lib/mac/libASICamera2.a"
    lib.install "lib/mac/libASICamera2.dylib.1.15.0430" => "libASICamera2-1.15.0430.dylib"
    lib.install_symlink lib/"libASICamera2-1.15.0430.dylib" => "libASICamera2.dylib"
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
