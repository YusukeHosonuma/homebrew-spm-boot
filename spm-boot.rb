require "formula"

class SpmBoot < Formula
    desc "Generate SwiftPackageManager project"
    homepage "https://github.com/YusukeHosonuma/SPMBoot"
    url "https://github.com/YusukeHosonuma/SPMBoot/archive/0.1.0.tar.gz"
    sha256 "cc6d13511ed82977c4c11a6046ffd9a62faf06356320c630dd09d9b4b6d2c4eb"
  
    def install
      system "make", "release-build"
      bin.install ".build/release/spm-boot"
    end
  
    depends_on :xcode => ["9.0", :build]
end
  