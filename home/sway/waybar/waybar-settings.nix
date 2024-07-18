{ pkgs, ... }: {
  home.packages = with pkgs; [  ];

  programs.waybar = {

    settings.mainBar = {
      layer = "bottom";
      position = "top";
      height = 35;
      #margin-top = 0;
      #margin-bottom = 0;
      #margin-left = 0;
      #margin-right = 0;
      spacing = 30;
      modules-left = [
        "sway/workspaces"
        "sway/mode"
      ];
      modules-center = [
        "sway/window"
        #"wlr/taskbar"
      ];
      modules-right = [
        "network"
        "memory"
        "cpu"
        "pulseaudio"
        "clock"
      ];
      clock = {
        format = "   {:%a %d %b, %H:%M }";
        tooltip = "true";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt = "   {:%d/%m }";
        #format = " {%a %0e.%0d %H:%M}";
        #timezone = "Europe/Berlin";
        #tooltip = "true";
        #tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #format-alt = " {:%d/%m}";
      };      
      
      pulseaudio-slider = {
        min = 0;
        max = 100;
        orientation = "horizontal";
      };
      
      cpu = {
        format = "{usage}%  ";
        tooltip = false;
      };
      
      network = {
        interval = 1;
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        format-disconnected = "Disconnected ⚠";
        format-ethernet = "{ifname}: {ipaddr}/{cidr}   up: {bandwidthUpBits} down: {bandwidthDownBits}";
        format-linked = "{ifname} (No IP) ";
        format-wifi = "{essid} ({signalStrength}%) ";
      };
      
      memory = { 
        format = "{}% "; 
      };
      
      "sway/mode" = { 
        format = ''<span style="italic">{}</span>''; 
      };
      
      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = [ "" "" "" ];
      };

      pulseaudio = {
        format = "{volume}% {icon}   {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-icons = {
          car = "";
          default = [ "" "" "" ];
          handsfree = "";
          headphones = "";
          headset = "";
          phone = "";
          portable = "";
        };
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        on-click = "pavucontrol";
      };
    };

    style = ''
    '';
  };
}
