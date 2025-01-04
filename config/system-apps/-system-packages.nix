{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    lutris-free
    wineWowPackages.waylandFull
    micro
    parted
    git
    wget
    lshw
    pulseaudio
    usbutils
    udiskie
    udisks
    polkit
    ntfs3g
    pavucontrol
    libnotify
    neofetch
    simple-scan
    networkmanagerapplet
    subfinder
    sshfs
    
    # AdoptOpenJDK
    temurin-bin
  ];
}