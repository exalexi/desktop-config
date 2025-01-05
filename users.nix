{ pkgs, ... }:
{
  users.users.lexi = {
    isNormalUser = true;
    useDefaultShell = true;
    description = "Lexi";
    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "storage"
      "libvirtd"
    ];
    packages = with pkgs; [ ];
    openssh.authorizedKeys.keys = [ ];
  };
}