class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "9f1d2499445605e68604f0860c4637f531dfb49a50a10a4cb3c0e43b5ce4a033"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "f2f0baa2fc2881d134d6a5b5511233dedbb27d2e97f8fc427bce76e2614381b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "d1b826ecd19c4a3e9ceb604bd77e071418fb58e2368130503eb936e47098e91f"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "f373676ce9dddf375b2a012c5fab5132136e2ce276052d06732f893b5ca44174"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
