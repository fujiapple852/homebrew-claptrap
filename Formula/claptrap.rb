class Claptrap < Formula
  desc "Bring the power of Clap to shell scripts"
  homepage "https://claptrap.sh"
  url "https://github.com/fujiapple852/claptrap/archive/refs/tags/0.3.0.tar.gz"
  sha256 "dbde95639da15e113c7372847c77a5969231772452333b688b3bae665f140b77"
  version "0.3.0"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "claptrap"
    bin.install "target/release/claptrap"
  end
    
end
