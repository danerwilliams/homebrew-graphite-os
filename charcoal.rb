class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.1"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.1/gt-macos-arm64"
      sha256 "6f0887b81c8c3c66185b153845ecf7ad636fd9baaab860765588136725921304"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.1/gt-macos-x64"
      sha256 "44a88531ea0826b897736e4fc8f3a3bfddff35f547d10c2aaf4e059da25346fa"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.1/gt-linux"
    sha256 "0cc5337a4781f6d744d677f8a509cd882b53faf744dcd89dc7bc387990a3e121"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
