{ pkgs, ...}: {

  # TODO: Figure this annoying garbage out 

  #services.swayidle = {
  #  enable = true;
  #  package = pkgs.swayidle;
  #    timeouts = [
  #      {
  #        timeout = 5;
  #        command = "${pkgs.swaylock}/bin/swaylock";
  #      }
  #    ];
  #};
  #systemd.user.services.swayidle.Service.Environment = [ "WAYLAND_DISPLAY=wayland-1" ];
}