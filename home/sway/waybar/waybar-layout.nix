{ pkgs, lib, ... }: {
  imports = [ ./modules/_module-imports.nix ];

  programs.waybar = {

    settings.mainBar = {
      layer = "bottom";
      position = "top";
      #height = 25;
      #spacing = 10;
      #reload_style_on_change = true;
      modules-left = [
        "sway/window"
        #"cava"
        #"image"
        #"custom/mediaplayer"
      ];
      modules-center = [
        "sway/workspaces"
      ];
      modules-right = [
        #"network"
        #"memory"
        #"cpu"
        "tray"
        "user"
        "pulseaudio"
        "clock"
      ];
    };
  };
}
