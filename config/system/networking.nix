{ ... }:
{
  networking = {
    hostName = "lesktop";
    networkmanager.enable = true;
    useDHCP = false;
    interfaces = {
      eno1 = {
        useDHCP = true;
        wakeOnLan = {
          enable = true;
          policy = [ "magic" ];
        };
      };

      #wlp0s20f3.useDHCP = true;
    };
  };

  # Tailscale
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };
}
