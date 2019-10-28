class DrupalCheck < Formula
  desc "Check Drupal code for deprecations and discover bugs"
  homepage "https://github.com/mglaman/drupal-check"
  url "https://github.com/mglaman/drupal-check/releases/download/1.0.14/drupal-check.phar"
  version "1.0.14"
  sha256 "2152e4aa2cae4d569265e004b859735358c0f45fc2a8927f5221492eda67a4f3"
  depends_on "php"

  def install
    bin.install "drupal-check.phar" => "drupal-check"
  end

  test do
    system "#{bin}/drupal-check", "--version"
  end
end
