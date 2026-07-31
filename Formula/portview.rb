class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "35c5485f0524a9b4b500cce38a262070c251899471336fafeecdd58378212dc9"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "61827dda5b969fcc4c7530d88c421ce25b1d09615929f9825cf1c4e6c42345a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "e7be02ae48faf211f600bebef54ef6ca6f78da23346a73f88bafb538d4a4675f"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "bf04edaa80815b61d4e6897ee5d79fe12d25bcdb6994827c8569ab1ba578b3f7"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
