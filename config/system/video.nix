{ pkgs, ... }:
{
  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

  };
  hardware = {
    enableRedistributableFirmware = true;
    cpu = {
      amd.updateMicrocode = true;
    };
  };
}
