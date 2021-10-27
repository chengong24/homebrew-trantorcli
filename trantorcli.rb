class Trantorcli< Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "2.0.RELEASE"
  sha256 "f8ca8f18c0f90de072524d20e094915e1381e2b8b1d60104478591ddf11d4319"

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
