class Claptrap < Formula
  desc "Bring the power of Clap to shell scripts"
  homepage "https://claptrap.cli.rs"
  url "https://github.com/fujiapple852/claptrap/archive/refs/tags/0.2.0.tar.gz"
  sha256 "7e7b0f0f7ca186357a9d2bf6e14b4276630e897d"
  version "0.2.0"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "claptrap"
    bin.install "target/release/claptrap"
  end
    
end
