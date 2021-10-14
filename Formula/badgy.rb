class Badgy < Formula
  desc "Badgy is a command line tool that creates variants of your icon by adding badge overlays."
  homepage "https://github.com/simplepractice/badgy.git"
  url "https://github.com/simplepractice/badgy.git", tag: "0.1.5"
  version "0.1.5"

  depends_on :macos
  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end