class GraphiteOs < Formula
  desc "The Graphite Open Source CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://github.com/danerwilliams/graphite-cli"
  version "0.1.0"
  license "apgl-3.0"

  depends_on "gh" => ">= 2.0.0"

  if OS.mac?
    url "https://github.com/danerwilliams/graphite-cli/releases/download/v0.1.0/gt-macos"
    sha256 "153bec2944eca75a68adc41f52608ca660674738e4b3ee9a66e8d98a44395dbf"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/danerwilliams/graphite-cli/releases/download/v0.1.0/gt-linux"
    sha256 "0df0447f5384e3e55de41509e46e2a073325db697a024fbd55edf4168f9a67e3"
    def install
      bin.install "gt-linux" => "gt"
    end  
  end

  test do
    raise "Test not implemented."
  end
end
