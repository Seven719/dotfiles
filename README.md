![ScreenshotNumber1](./screenshot1.png)
![ScreenshotNumber2](./screenshot2.png)
### Installation Steps
1. clone the repository
```bash
git clone https://github.com/Seven719/dotfiles.git
```
2. add the .git directory as a safe directory(you won't be able to clean built without this - you'd have to make a change and put it into staging but not commit)
```bash
sudo git config --system --add safe.directory /home/$(whoami)/PATH_TO_DOTFILES/.git
```
   
3. modify the hardware configuration in dotfiles/nixos/hosts/amaterasu to your hardware specifications
4. replace "iulian" with your user's name in dotfiles/nixos/modules/user.nix
5. build nixos and switch
```bash
sudo nixos-rebuild switch --flake ~/PATH_TO_DOTFILES/nixos#amaterasu
```
