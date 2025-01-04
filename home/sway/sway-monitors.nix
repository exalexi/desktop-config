{ ... }:
{
  wayland.windowManager.sway.config.output = rec {
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
}
