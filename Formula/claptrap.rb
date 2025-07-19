class Claptrap < Formula
  desc "Bring the power of Clap to shell scripts"
  homepage "https://claptrap.cli.rs"
  url "https://github.com/fujiapple852/claptrap/archive/refs/tags/0.1.0.tar.gz"
  sha256 "f2772e95c51dbf3ae89aedc5c5f9e95c85c81ba7"
  version "0.1.0"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "claptrap"
    bin.install "target/release/claptrap"
  end
    
end
