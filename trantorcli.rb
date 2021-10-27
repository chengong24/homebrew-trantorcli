class Trantorcli< Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "2.0.RELEASE"
  sha256 "f05a1d7a0a8dacc180a7f847bca89373448721cbec1a09a44301a57a2743c60c"

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
