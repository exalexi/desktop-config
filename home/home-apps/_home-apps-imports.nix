{ ... }: {
  imports = [
    ./-home-packages.nix 
    ./alacritty.nix	
    ./cava.nix
    ./dunst.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix 
    ./neofetch.nix
    ./rofi.nix
    ./vscode.nix
    ./zsh.nix
  ];
}