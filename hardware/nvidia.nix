{ config, ... }:
{
  # https://nixos.wiki/wiki/FAQ
  nixpkgs.config.allowUnfree = true;

  # https://nixos.wiki/wiki/Nvidia
  hardware.nvidia.modesetting.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  # https://nixos.wiki/wiki/Nvidia#sync_mode
  hardware.nvidia.prime.sync.enable = true;
  hardware.nvidia.prime.intelBusId = "PCI:0:2:0";
  hardware.nvidia.prime.nvidiaBusId = "PCI:1:0:0";

  # Credit: @mlatus
  # Fix black screen issues of HDMI / DP port.
  services.xserver.displayManager.sessionCommands =
    config.services.xserver.displayManager.setupCommands;

  # https://wiki.archlinux.org/title/kernel_mode_setting#Early_KMS_start
  boot.initrd = {
    enable = true;
    kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];
  };
}