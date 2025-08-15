class Claptrap < Formula
  desc "Bring the power of Clap to shell scripts"
  homepage "https://claptrap.sh"
  url "https://github.com/fujiapple852/claptrap/archive/refs/tags/0.2.0.tar.gz"
  sha256 "1b0d938756985e307a467964cb82cf6933f6dcb61d86b3f535e6001056965b8e"
  version "0.2.0"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "claptrap"
    bin.install "target/release/claptrap"
  end
    
end
