{ pkgs, ... }: {
  imports = [
    ./-home-packages.nix 
    ./alacritty.nix	
    ./cava.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix 
    ./rofi.nix
    ./vscode.nix
  ];
}