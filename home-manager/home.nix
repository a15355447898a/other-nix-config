{ ... }:
{
  imports = [ ./programs/chromium.nix ]
    ++ [ ./dconf.nix ./file-links.nix ]
    ++ [ ./programs/alacritty.nix ]
    ++ [ ./fonts.nix ]
    ++ [ ./programs/qv2ray.nix ]
    ++ [ ./programs/git.nix ]
    ++ [ ./gnome.nix ]
    ++ [ ./programs/albert.nix ];

  home.stateVersion = "21.11";
}
