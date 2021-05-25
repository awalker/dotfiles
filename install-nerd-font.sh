#!/usr/bin/env bash
# install SourceCodePro Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip -u SourceCodePro.zip -d fonts
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
unzip -u FiraMono.zip -d fonts
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip -u FiraCode.zip -d fonts
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
unzip -u Hack.zip -d fonts
fc-cache -fv
echo "done!"
