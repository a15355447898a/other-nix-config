# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  hwatch = {
    pname = "hwatch";
    version = "ab82e1242ba4d44c46a1267e8dd6ebe81ef94964";
    src = fetchgit {
      url = "https://github.com/blacknon/hwatch";
      rev = "ab82e1242ba4d44c46a1267e8dd6ebe81ef94964";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-I8i7lyD//vLGU2BcKMf2h5qydV6LRefzYcgBFxLbFCg=";
    };
  };
  nushell = {
    pname = "nushell";
    version = "0.63.0";
    src = fetchFromGitHub ({
      owner = "nushell";
      repo = "nushell";
      rev = "0.63.0";
      fetchSubmodules = false;
      sha256 = "sha256-4thvUSOSvH/bv0aW7hGGQMvtXdS+yDfZzPRLZmPZQMQ=";
    });
  };
  oh-my-posh = {
    pname = "oh-my-posh";
    version = "v7.91.3";
    src = fetchFromGitHub ({
      owner = "JanDeDobbeleer";
      repo = "oh-my-posh";
      rev = "v7.91.3";
      fetchSubmodules = false;
      sha256 = "sha256-cS2MODoNvDVySdVqIfbSBSc7R/eXYQLopI8dD0Casoo=";
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
  };
}
