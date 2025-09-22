class FzfTab < Formula
  desc "Replace Zsh's default completion selection menu with fzf"
  homepage "https://github.com/Aloxaf/fzf-tab"
  url "https://github.com/Aloxaf/fzf-tab/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "6b9c82c73ceb70ab13d1b6ef07c7bda7d43a3c507152dc156f783f1f1a6774ad"
  license "MIT"

  depends_on "fzf"
  depends_on "zsh"

  def install
    pkgshare.install "fzf-tab.plugin.zsh", "fzf-tab.zsh", "README.md"
    pkgshare.install "modules"
    pkgshare.install "lib"
  end

  def caveats
    <<~EOS
      To activate fzf-tab, add the following to your ~/.zshrc:
        source #{HOMEBREW_PREFIX}/share/fzf-tab/fzf-tab.plugin.zsh
    EOS
  end
end
