#! /bin/bash
# install SourceCodePro Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
cd /tmp
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip SourceCodePro.zip -d ~/.local/share/fonts
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
unzip FiraMono.zip -d ~/.local/share/fonts
fc-cache -fv
echo "done!"
