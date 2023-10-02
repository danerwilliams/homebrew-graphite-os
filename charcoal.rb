class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.0"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.0/gt-macos-arm64"
      sha256 "1161de182024a47a46d0335808331b2fa069d33aab2d15a4dbc34f20b0048aab"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.0/gt-macos-x64"
      sha256 "4ae16c724436a497b4661af2a2f1785f7d705259f142c8881f0025f0ff1f5a88"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.0/gt-linux"
    sha256 "6e4063ccd9e6f6567f18fc96b066a1401ae229d80c03c5a5c5456ad0aa5ac4af"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
