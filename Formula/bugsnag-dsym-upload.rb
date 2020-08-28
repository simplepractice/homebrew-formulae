#!/usr/bin/env ruby

require 'formula'

class BugsnagDsymUpload < Formula

  homepage 'https://docs.bugsnag.com/api/dsym-upload'
  head 'https://github.com/bugsnag/bugsnag-dsym-upload'
  url 'https://github.com/bugsnag/bugsnag-dsym-upload/archive/v2.0.0.tar.gz'

  def install
    system "make", "BINDIR=#{bin}", "MANDIR=#{man}", "install"
  end

  test do
    system bin/"bugsnag-dsym-upload", "--help"
  end
end
