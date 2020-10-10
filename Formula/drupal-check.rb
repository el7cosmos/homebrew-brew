class DrupalCheck < Formula
  desc "Check Drupal code for deprecations and discover bugs"
  homepage "https://github.com/mglaman/drupal-check"
  url "https://github.com/mglaman/drupal-check/releases/download/1.1.2/drupal-check.phar"
  sha256 "07831a859307f490556f2f44a1acdde6073dda8cfa467def0287d1d54025708d"
  depends_on "php"
  disable! date: "2020-07-30", because: :does_not_build

  def install
    bin.install "drupal-check.phar" => "drupal-check"
  end

  test do
    system "#{bin}/drupal-check", "--version"
  end
end
