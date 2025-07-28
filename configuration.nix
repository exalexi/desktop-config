{
  config,
  pkgs,
  lib,
  ...
}:
{

  imports = [
    ./hardware-configuration.nix
    ./config/system-apps/_system-apps-imports.nix
    ./config/system/_system-imports.nix
    ./users.nix
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  # Home-Manager
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    users.lexi = import ./home;
    backupFileExtension = "backup";
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Crosscompile for aarch64-linux
  boot.binfmt.emulatedSystems = [ "aarch64-linux" ];

  # Enable zsh completion.
  environment.pathsToLink = [ "/share/zsh" ];

  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "24.05";
}
