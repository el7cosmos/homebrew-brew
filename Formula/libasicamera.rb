class Libasicamera < Formula
  desc "Library for ASI Camera"
  homepage "https://astronomy-imaging-camera.com/"
  url "https://astronomy-imaging-camera.com/software/ASI_linux_mac_SDK_V0.7.0118.tar"
  sha256 "9638ab1f99d174dcd817869bf0d65cc68998ca7496bcdf078020eb08753ef560"
  depends_on "libusb"

  def install
    system "tar", "xjf", "ASI_linux_mac_SDK.tar.bz2"

    include.install "include/ASICamera2.h"
    lib.install "lib/mac/libASICamera2.a"
    lib.install "lib/mac/libASICamera2.dylib.0.7.0118" => "libASICamera2-0.7.0118.dylib"
    lib.install_symlink lib/"libASICamera2-0.7.0118.dylib" => "libASICamera2.dylib"
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
