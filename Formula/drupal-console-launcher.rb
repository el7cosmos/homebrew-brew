class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.9.4/drupal.phar"
  sha256 "968b03813b036067114e479b94b711b488bc40ef84e56cc2775f28cd247bc65b"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
