class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "10daf7b2ee55e6ae7f82fe393a3152cdb3bdff33056fdf6406e5e8f49d575254"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "c8061813f8cb6c8f0edaeea5ba7d1939dcd923c1fd47857a44656c8e108bd6a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "7192eb687bf142dbf3b06173f02bfaa8a0964893a0b7c7a2a8dab2ed781aef30"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "4d81b5b0ae9d7b80399f703014e71c410559fe6a9bacbe84cfa2e5a7b519c56e"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
