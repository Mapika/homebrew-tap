class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "ec689732ef4eb91c0e486afaa75d9ed0a354d8cdf5c44e0ee206153d0f7422fe"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "20bc0c411e98bb22318215b92df42260541b8e7ac6471a960fe452509c6d66d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "6e2655477a428e29f62b0b5d76eed4dd5047353d75cf4391270389a06b409005"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "bc045275c555c859f0c225e25a73134ca59ccf0677fa2d190234eea7ce736528"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
