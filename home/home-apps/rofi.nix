{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    /*theme = {
      background-color = "#1E1E2E";
      foreground-color = "#f5c2e7";
      border-color =     "#f5c2e7";
    };*/
    
  }; 
}