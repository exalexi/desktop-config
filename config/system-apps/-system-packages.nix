{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    lutris-free
    neofetch
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
    spotify

    #Spotify-adblock
    nur.repos.nltch.spotify-adblock    
    nur.repos.nltch.ciscoPacketTracer8

  ];
}