class Charcoal < Formula
  desc "Charcoal allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/charcoal"
  version "0.2.1"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.2/gt-macos-arm64"
      sha256 "01d187cbd28cb5ae6d7fba9be2d5f70b31a8319155d68435c70eee19f2fb3b44"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.2/gt-macos-x64"
      sha256 "bb9d6b404423853bea4de2d40714d3c7eddc1eba1948c5fb17e7e64075ce5f4b"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/danerwilliams/charcoal/releases/download/v0.2.2/gt-linux"
    sha256 "e46064fb5f555f595a24ec6d49f299ea1c32531516a72b5da70f024b603e245e"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
