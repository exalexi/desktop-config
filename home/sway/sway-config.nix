{ pkgs, ... }: 	{
  
  wayland.windowManager.sway = {
    checkConfig = false;
    enable = true;
    systemd.enable = true;
    package = null;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
      
      defaultWorkspace = "1";

      focus.followMouse = "always";
      
      # Cool Looks \(^.^)/
      gaps = {
        inner = 6;
        outer = 3;
      };
              
      terminal = "alacritty";
      menu = "rofi --show run";
      bars = [{
        command = "waybar";
      }];
      window = {
        hideEdgeBorders = "smart";
        border = 0;
        titlebar = false;
        
      };

      input."*" = {
        xkb_layout = "de";
        xkb_variant = "nodeadkeys";
      };

      # Display Layout
      output = {
        DP-2 = {
          resolution = "1680x1050";
          position = "0 870";
          scale = "1";        
        };
        DP-1 = {
          resolution = "1920x1080@144Hz";
          position = "1680 840";
          scale = "1";
        };
        HDMI-A-1 = {
          resolution = "1920x1080@144Hz";
          position = "3600 0";
          transform = "270";
          scale = "1";        
        };
      };  
      workspaceAutoBackAndForth = true;
    };
  };
}