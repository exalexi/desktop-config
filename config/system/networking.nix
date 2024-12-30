{ ... }: {
  networking = {
    hostName = "Lesktop";
    networkmanager.enable = true;
    useDHCP = false;
    interfaces = {
      eno1.useDHCP = true;
      #wlp0s20f3.useDHCP = true;	
    };
  };
  
}