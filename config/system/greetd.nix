{ ... }:
{

  services.greetd = {
    enable = true;
    restart = false;
    settings = {
      default_session.command = "tuigreet --cmd 'dbus-run-session sway' -t -r --asterisks -g 'Hiya'";
    };
  };
}
