{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # AdoptOpenJDK
    ali
    fastfetch
    git
    greetd.tuigreet
    libnotify
    lshw
    lutris-free
    magic-wormhole-rs
    micro
    neofetch
    networkmanagerapplet
    nil
    nixd
    nixfmt-rfc-style
    ntfs3g
    parsec-bin
    parted
    pavucontrol
    polkit
    pulseaudio
    simple-scan
    sshfs
    subfinder
    temurin-bin
    udiskie
    udisks
    usbutils
    wget
    wineWowPackages.waylandFull
  ];
}
