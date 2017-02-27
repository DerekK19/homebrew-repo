class Romecli < Formula
  desc "CLI tool for Rome Server written in Swift"
  homepage "https://github.com/DerekK19/RomeCLI"
  url "https://github.com/DerekK19/RomeCLI/archive/0.3.0.tar.gz"
  sha256 "70ef7ae65cb604bc107db967bb769dd9e01f3041881a5617113ae2460b0bb6a9"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romecli", "-h"
  end
end
