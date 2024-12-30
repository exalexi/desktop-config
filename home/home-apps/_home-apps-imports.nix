{ ... }: {
  imports = [
    ./-home-packages.nix 
    ./alacritty.nix	
    ./cava.nix
    ./dunst.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix 
    ./kando.nix
    ./networkmanagerapplet.nix
    ./obs.nix
    ./rofi.nix
    ./vscode.nix
    ./zsh.nix
  ];
}