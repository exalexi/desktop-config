{ pkgs, ... }: {
    home.packages = with pkgs; [
    file
    htop
    eza
    wl-clipboard
    mako
    alacritty
    keepassxc
    gnome.eog
    gnome.evince
    gnome.file-roller
    gnome.nautilus
    
    element-desktop
    rpi-imager
    tigervnc
    gimp
    protonvpn-gui
    vesktop
    nixfmt-rfc-style
    vlc
    grim
    slurp
    wtype
    yt-dlp
    xmousepasteblock
    rofimoji
    rofi-power-menu
    rofi-screenshot
    # Waybar Media Player
    feh 
    playerctl   
    w3m
    imagemagick
    hyfetch
    qbittorrent
    libreoffice
    tor-browser
    jellyfin-media-player
    
    #School stuff
    #ciscoPacketTracer7
    ciscoPacketTracer8
  ];
}