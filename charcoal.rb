class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.1"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.3/gt-macos-arm64"
      sha256 "ca48f7c10c1201cab296106423daea52ef9332168b21b2cdd18696772f0487b3"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.3/gt-macos-x64"
      sha256 "29f5385ecaced9567281f660f08cd1e4df476b3c595e8d9ee7f0ec49fff36c28"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.3/gt-linux"
    sha256 "d00c605aa095320eb5352ff8e3aa26913c2bf7088794417bd2e6e867d0532b01"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
