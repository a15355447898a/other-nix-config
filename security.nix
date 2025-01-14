{ lib, pkgs, ... }:
{
  security.sudo.enable = true;

  # https://superuser.com/questions/500119
  # https://www.sudo.ws/docs/man/1.8.15/sudoers.man/
  security.sudo.extraConfig = ''
    Defaults lecture = never
    # Defaults timestamp_timeout = 0
  '';

  # https://nixos.wiki/wiki/Yubikey
  security.pam.yubico = {
    enable = true;
    mode = "challenge-response";

    # Default, pass or key.
    control = "sufficient";
  };
}
