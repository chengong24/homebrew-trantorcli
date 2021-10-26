class Trantor < Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.19.0"
  sha256 "2ca6ff60c26300c195cfbe276713f7d34d3ca9f5ae8542e82af9bf9525786bca"

#   depends_on "docker"

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
