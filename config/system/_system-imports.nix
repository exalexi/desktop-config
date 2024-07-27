{ ... }: {
  imports =
  [
    ./audio.nix
    ./boot.nix
    ./fonts.nix
    ./greetd.nix
    ./locale.nix
    ./mount.nix
    ./networking.nix
    ./sway.nix
    ./thermald.nix
    ./video.nix
  ];
}