class Trantorcli < Formula
  desc "Terminus Trantor CLIdfd"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.0.1-SNAPSHOT"
  sha256 "c8a1f8f8178bf30697ab88dd0177f716cc878f2a7302851ca6fef9f2a5484048"

  def install
    # Remove windows files
   prefix.install %w[bin conf lib]
   zsh_completion.install "completions/zsh/_trantor"
   bash_completion.install "completions/bash/trantor-completion.bash"
   fish_completion.install "completions/fish/trantor-completion.fish"
  end

  test do
    system "#{bin}/trantor", "version"
  end

end
