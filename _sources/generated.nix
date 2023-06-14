# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  "\"github/copilot.vim\"" = {
    pname = "\"github/copilot.vim\"";
    version = "1358e8e45ecedc53daf971924a0541ddf6224faf";
    src = fetchgit {
      url = "https://github.com/github/copilot.vim";
      rev = "1358e8e45ecedc53daf971924a0541ddf6224faf";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-6xIOngHzmBrgNfl0JI5dUkRLGlq2Tf+HsUj5gha/Ppw=";
    };
    date = "2023-04-28";
  };
  "\"longld/peda\"" = {
    pname = "\"longld/peda\"";
    version = "v1.2";
    src = fetchFromGitHub {
      owner = "longld";
      repo = "peda";
      rev = "v1.2";
      fetchSubmodules = false;
      sha256 = "sha256-vtNJ9WHCUtZmIn/IXwwtKrZx1i/az+gMmW6fLd67QYQ=";
    };
  };
  "\"rose-pine/kitty\"" = {
    pname = "\"rose-pine/kitty\"";
    version = "a7f05dae78a563367e6200bf41d5d869a9bb4bdd";
    src = fetchgit {
      url = "https://github.com/rose-pine/kitty";
      rev = "a7f05dae78a563367e6200bf41d5d869a9bb4bdd";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-PPMngY53waqKGeurUp8vaht008Kx8u6Sy+0siPBM79A=";
    };
    date = "2023-03-23";
  };
  "\"wawa19933/fish-systemd\"" = {
    pname = "\"wawa19933/fish-systemd\"";
    version = "4e922a28ae183e0ddb28c35b8f1415d2c63f978d";
    src = fetchgit {
      url = "https://github.com/wawa19933/fish-systemd";
      rev = "4e922a28ae183e0ddb28c35b8f1415d2c63f978d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-km6VgvYO1b3wnmpKrnJUaZUrQiIDl8NetECa33jbLbo=";
    };
    date = "2021-08-05";
  };
  firefox-gnome-theme = {
    pname = "firefox-gnome-theme";
    version = "v114";
    src = fetchFromGitHub {
      owner = "rafaelmardojai";
      repo = "firefox-gnome-theme";
      rev = "v114";
      fetchSubmodules = false;
      sha256 = "sha256-o53fws/jwhLfxiYfTyYpKSGi61d5LHzGgSCkt3DNGRI=";
    };
  };
  gnome-shell-extension-sensory-perception = {
    pname = "gnome-shell-extension-sensory-perception";
    version = "v18";
    src = fetchFromGitHub {
      owner = "HarlemSquirrel";
      repo = "gnome-shell-extension-sensory-perception";
      rev = "v18";
      fetchSubmodules = false;
      sha256 = "sha256-WyMOMPHsLP0CiHpuhafxT1vEKTgEqPRoQAEMA17pFtU=";
    };
  };
  rose-pine = {
    pname = "rose-pine";
    version = "7c3625f3d0f34359ba114e09b1ba3f3c1bed399a";
    src = fetchgit {
      url = "https://github.com/rose-pine/alacritty";
      rev = "7c3625f3d0f34359ba114e09b1ba3f3c1bed399a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-fjzKxSXGv0yLmT+VAonRCxlqQldxrHWUQgsOugobFoU=";
    };
    date = "2022-04-30";
  };
}
