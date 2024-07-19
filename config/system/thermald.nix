{ pkgs, ... }: {

  services.thermald.enable = lib.mkDefault true;
}