{ pkgs, inputs, lib, ... }: with inputs;
let hashedPassword = "$6$NixOS/RoT$eo8dkH7eCxYFh/YkSOzDp7lIG1iQZm5MY2L5IPRh/1YIWMmypVPlagNhUyshl9Kt.nklEB1ZMoSylU5.MrOLa/"; in
{
  # https://elis.nu/blog/2020/05/nixos-tmpfs-as-root/
  users.mutableUsers = false;

  programs.adb.enable = true;

  services.udev.enable = true;
  services.udev.packages = [ pkgs.android-udev-rules ];

  users.users."vanilla" = {
    isNormalUser = true;
    inherit hashedPassword;

    # Enable ‘sudo’ for the user.
    extraGroups = [ "wheel" "adbusers" ];

    uid = 1000;
  };
}
