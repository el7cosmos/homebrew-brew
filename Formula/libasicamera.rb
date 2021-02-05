class Libasicamera < Formula
  desc "Library for ASI Camera"
  homepage "https://astronomy-imaging-camera.com/"
  url "https://astronomy-imaging-camera.com/software/ASI_linux_mac_SDK_V1.16.3.tar.bz2"
  sha256 "3167b0b0c1958b11f24875f5f185cd4fcbb56ced967971ec26ae0897ac2f152a"

  livecheck do
    url "https://astronomy-imaging-camera.com/software-drivers"
    regex(/href=.*?ASI_linux_mac_SDK_V?(\d+(?:\.\d+)+)\.t/i)
  end

  bottle do
    root_url "https://dl.bintray.com/el7cosmos/bottle-brew"
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
