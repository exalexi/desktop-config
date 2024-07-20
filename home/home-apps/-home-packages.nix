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
    protonvpn-cli_2
    vesktop
    nixfmt-rfc-style
    vlc
    grim
    slurp
    wtype
    yt-dlp
    
    # Rofi Add-ons
    rofi-power-menu
    rofimoji
    rofi-screenshot

    # Waybar Media Player
    feh 
    playerctl
    

  ];
}