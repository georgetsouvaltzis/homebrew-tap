class Csw < Formula
  desc "Switch between Claude subscriptions in Claude Code"
  homepage "https://github.com/georgetsouvaltzis/claude-switch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_darwin_arm64.tar.gz"
      sha256 "da5e6083994c61e49f873a45a179f9bc8d5603f4ae5d970706354d34180eeb61"
    end
    on_intel do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_darwin_amd64.tar.gz"
      sha256 "77d5dceeebbbe83a64f6ad3cf5f5401cc856ee4a995e9ecb7b36ce6c29e53eb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_linux_arm64.tar.gz"
      sha256 "415c00c4b2ea868ea4864cc8ed92944fa58143f4c7846cddf4617f267ca483aa"
    end
    on_intel do
      url "https://github.com/georgetsouvaltzis/claude-switch/releases/download/0.1.0/csw_0.1.0_linux_amd64.tar.gz"
      sha256 "25bc8ef7ee5a2f2d67921dc9b563d8906a81b61dc063d362873736b915e43cae"
    end
  end

  def install
    bin.install "csw"
  end

  test do
    assert_match "csw #{version}", shell_output("#{bin}/csw version")
  end
end
