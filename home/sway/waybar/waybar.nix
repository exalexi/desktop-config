{ pkgs, ...}: {

  imports =
    [ 
      ./waybar-layout.nix
    ];
    
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd = {
      enable = true;
      target = "sway-session.target";
    };
  };
}