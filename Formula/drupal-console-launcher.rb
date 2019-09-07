class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.9.3/drupal.phar"
  sha256 "5df498104c8dcd15f287371b2a80504e9d2aaa3b9649a34904b39e7074d97a11"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
