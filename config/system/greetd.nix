{ ... }:
{
  services.greetd = {
    enable = true;
    restart = true;
    settings = {
      default_session = {
        user = "lexi";
        command = "tuigreet --cmd 'niri-session --config /etc/nixos/config/files/niri.kdl' --remember --asterisks -g 'AUTHORIZED PERSONNEL ONLY!!!'";
      };
    };
  };
  environment.variables = {
    NIRI_CONFIG = "/etc/nixos/home/niri/config.kdl";
  };

  ## Swaylock
  security.pam.services.swaylock = {
    text = "auth include login";
  };
}
