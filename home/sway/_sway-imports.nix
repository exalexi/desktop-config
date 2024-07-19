{ pkgs, ...}: {
  imports =
  [ 
    ./waybar/waybar.nix
    ./sway-config.nix
    ./sway-extraconfig.nix
    ./sway-notifications.nix
    ./swayidle.nix
    ./swaylock.nix
  ];
}