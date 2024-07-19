{ pkgs, ...}: {
  imports =
  [ 
    ./clock.nix
    ./cpu.nix
    ./image.nix
    ./mediaplayer.nix
    ./memory.nix
    ./network.nix
    ./pulseaudio-slider.nix
    ./pulseaudio.nix
    ./sway-mode.nix
    ./sway-window.nix
    ./sway-workspaces.nix
    ./temperature.nix
    ./tray.nix
    ./user.nix
  ];
}