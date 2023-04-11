# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  "\"github/copilot.vim\"" = {
    pname = "\"github/copilot.vim\"";
    version = "b6e5624351ba735e25eb8864d7d22819aad00606";
    src = fetchgit {
      url = "https://github.com/github/copilot.vim";
      rev = "b6e5624351ba735e25eb8864d7d22819aad00606";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-EA9SNPRIIBG9eoV299h+5/AcF/NJYS8izsurLEW31bc=";
    };
    date = "2023-03-27";
  };
  "\"longld/peda\"" = {
    pname = "\"longld/peda\"";
    version = "v1.2";
    src = fetchFromGitHub ({
      owner = "longld";
      repo = "peda";
      rev = "v1.2";
      fetchSubmodules = false;
      sha256 = "sha256-vtNJ9WHCUtZmIn/IXwwtKrZx1i/az+gMmW6fLd67QYQ=";
    });
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
    version = "v111";
    src = fetchFromGitHub ({
      owner = "rafaelmardojai";
      repo = "firefox-gnome-theme";
      rev = "v111";
      fetchSubmodules = false;
      sha256 = "sha256-QWRd9kpBbX6x/kH5NAxa2Eo68L9yw0RiarxPXVt1Xtw=";
    });
  };
  gnome-shell-extension-sensory-perception = {
    pname = "gnome-shell-extension-sensory-perception";
    version = "v18";
    src = fetchFromGitHub ({
      owner = "HarlemSquirrel";
      repo = "gnome-shell-extension-sensory-perception";
      rev = "v18";
      fetchSubmodules = false;
      sha256 = "sha256-WyMOMPHsLP0CiHpuhafxT1vEKTgEqPRoQAEMA17pFtU=";
    });
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
