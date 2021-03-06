# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules =
    [ "xhci_pci" "ahci" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/a9414dcf-76a1-41bd-89da-183c2e893fb8";
    fsType = "ext4";
  };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/00c12456-fe25-4ba1-823d-906854bd2144"; }];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
