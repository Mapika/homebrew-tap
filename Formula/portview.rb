class Portview < Formula
  desc "A diagnostic-first port viewer. See what's on your ports, then act on it."
  homepage "https://github.com/Mapika/portview"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-aarch64.tar.gz"
      sha256 "4bcb962e191a04b2e91a6f2b7342dec78b00f98a8f478624c4ab0d5faff9d59c"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-darwin-x86_64.tar.gz"
      sha256 "d876a71c261403fa0f93afce2aac36ad998cd913c33ba506b89ee5f477b58cce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-aarch64-musl.tar.gz"
      sha256 "58fe7a9d70dbff0e94bcf6abb1ef0cbc93781fcdcb101862bddb44e4b1c1389d"
    else
      url "https://github.com/Mapika/portview/releases/download/v#{version}/portview-linux-x86_64-musl.tar.gz"
      sha256 "e1815e1b147d0e229772139451750313eb285b80163b650ba07b269004b06f2c"
    end
  end

  def install
    bin.install "portview"
  end

  test do
    assert_match "portview", shell_output("#{bin}/portview --version")
  end
end
