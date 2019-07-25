class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.9.1/drupal.phar"
  sha256 "fbe3ad39e49a05c4b93121ffd1899945d5e6f216a6d35f303694ed2e66d9a734"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
