class MacCleaner < Formula
  desc "Fast, safe CLI for cleaning macOS development caches"
  homepage "https://github.com/pablofmorales/mac-cleaner-cli"
  url "https://registry.npmjs.org/@blackasteroid/mac-cleaner-cli/-/mac-cleaner-cli-1.5.10.tgz"
  sha256 "944c91f628e4fc93b0056e59d79c243ecd51b45ebf97164f878609070459764f"
  license "MIT"
  version "1.5.10"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
