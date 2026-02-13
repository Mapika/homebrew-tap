class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "df8a4871df9270bcff7c54d845f1fd67ddbe9cc4af11381b6ee1c5b211b5b34f"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "108ec622089b6f8de5087e5e8ac3bfaa185dfdf0f808808e8e4990f7512d7a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "556e2a3cd74c46d5b3286aa48cf86a15edca8e58638ab45eb30fae85f277f720"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "7ef990379cb7f53a85ee58d29d6abf842c1f8a2bb29856ced93b9e17d8a1d0d5"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
