class Trantorcli< Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.19.7"
  sha256 "4943132e22c63e423d1cdeacd572c335c6c3ac94f44a58899622cd054d10657a"

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
