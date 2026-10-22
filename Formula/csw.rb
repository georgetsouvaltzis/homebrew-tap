class Csw < Formula
  desc "Switch between Claude subscriptions in Claude Code"
  homepage "https://github.com/georgetsouvaltzis/claude-switch"
  url "https://github.com/georgetsouvaltzis/claude-switch/archive/refs/tags/0.1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/csw"
  end

  test do
    assert_match "csw #{version}", shell_output("#{bin}/csw version")
  end
end
