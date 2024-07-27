{pkgs, ...}:{  
  home.packages = [ pkgs.neofetch ];
  
  #xdg.configFile."neofetch/config.conf".source = ./config.conf;
  xdg.configFile."neofetch/logo.png".source = /etc/nixos/home/sway/images/Collage2000x.png;
}