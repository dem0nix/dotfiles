# fish shell
Dependencies:
+ [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
+ [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#patched-fonts)

Installation:
```bash
# install fish shell
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
# change default shell for user
chsh -s /usr/local/bin/fish
# install oh-my-fish framework
curl -L https://get.oh-my.fish | fish
# install themes
omf install shellder
omf install bobthefish
# bobthefish is my favorite theme, looks cool with nerd fonts
# https://github.com/ryanoasis/nerd-fonts#patched-fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
# now set the theme
omf theme bobthefish
```
