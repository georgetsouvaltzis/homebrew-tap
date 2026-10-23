class Csw < Formula
  desc "Switch between Claude subscriptions in Claude Code"
  homepage "https://github.com/georgetsouvaltzis/claude-switch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_darwin_arm64.tar.gz"
      sha256 "b308664b9b47b497781b40a58011ac9da69f5a4bb60969492ae04a4ab0b87d81"
    end
    on_intel do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_darwin_amd64.tar.gz"
      sha256 "0aeb56cc6010cf0b82c3f7d09cc3b9754035eef9d6abeff5cc6a048fd9c8de83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_linux_arm64.tar.gz"
      sha256 "bbee2ba360d32bb929722a3dd594f688e235fe08e0351fe5163c0f7780a53c9d"
    end
    on_intel do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_linux_amd64.tar.gz"
      sha256 "1fd537ccda200e28195148f94dcd7b8ea1071ea58620f65810e16976b1962bb4"
    end
  end

  def install
    bin.install "csw"
  end

  test do
    assert_match "csw #{version}", shell_output("#{bin}/csw version")
  end
end
