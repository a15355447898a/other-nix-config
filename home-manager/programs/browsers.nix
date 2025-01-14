{ pkgs, config, inputs, system, generated, ... }:
with pkgs;

let lst = [ "VaapiVideoEncoder" "VaapiVideoDecoder" ]; in
let features = pkgs.lib.strings.concatStringsSep "," lst; in
{
  programs.chromium.enable = true;
  # https://bugs.chromium.org/p/chromium/issues/detail?id=1036659
  programs.chromium.commandLineArgs = [ "--disable-features=MediaRouter" ];

  home.packages = [
    pkgs.tor-browser-bundle-bin
  ];

  # https://wiki.archlinux.org/title/chromium
  systemd.user.sessionVariables = {
    GOOGLE_DEFAULT_CLIENT_ID = "77185425430.apps.googleusercontent.com";
    GOOGLE_DEFAULT_CLIENT_SECRET = "OTJgUOQcT7lO7GsGZq2G4IlT";
  };

  home.file.".local/share/tor-browser".source =
    config.lib.file.mkOutOfStoreSymlink
      "/persistent/dot/local/share/tor-browser";

  home.file.".config/chromium".source =
    config.lib.file.mkOutOfStoreSymlink
      "/persistent/dot/config/chromium";

  home.file.".cache/chromium".source =
    config.lib.file.mkOutOfStoreSymlink
      "/persistent/dot/cache/chromium";

  programs.firefox.enable = true;
  # https://www.mozilla.org/en-US/firefox/developer/
  programs.firefox.package = (pkgs.firefox-devedition-bin.overrideAttrs (old: {
    buildCommand = old.buildCommand + ''
      cd $out/share/applications

      # https://github.com/archlinux/svntogit-community/blob/packages/firefox-developer-edition/trunk/firefox-developer-edition.desktop
      sed -i 's/^Icon=firefox/&-developer-edition/g' firefox-devedition.desktop
      # https://stackoverflow.com/questions/4609949/what-does-1-in-sed-do
      sed -i 's/^\(Name=Firefox\).*/\1 Developer Edition/g' firefox-devedition.desktop
    '';
  }));

  # https://nix-community.github.io/home-manager/options.html
  programs.firefox.profiles."dev-edition-default" = {
    name = "dev-edition-default";

    settings = ({
      # https://kb.mozillazine.org/Browser.startup.page
      "browser.startup.page" = 3;
      "browser.shell.checkDefaultBrowser" = false;

      # https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/browserSettings/overrideContentColorScheme
      "layout.css.prefers-color-scheme.content-override" = 2;
      "browser.display.use_system_colors" = true; # Manage Colors
      "media.eme.enabled" = true; # Play DRM-controlled content

      # Recommend [ extensions | features ] as you browse
      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;

      "network.proxy.type" = 4;
    } // {
      # Settings - Home - Firefox Home Content - Enable All
      "browser.newtabpage.activity-stream.feeds.section.highlights" = true;
      "browser.newtabpage.activity-stream.feeds.snippets" = true;
    } // {
      "browser.contentblocking.category" = "strict";
      "privacy.donottrackheader.enabled" = true;

      # Firefox Developer Edition Data Collection and Use
      "datareporting.healthreport.uploadEnabled" = false;
      "app.shield.optoutstudies.enabled" = false;
    });

    userChrome = ''@import "firefox-gnome-theme/userChrome.css";'';
    userContent = ''@import "firefox-gnome-theme/userContent.css";'';
    extraConfig = builtins.readFile "${generated.firefox-gnome-theme.src}/configuration/user.js";
  };

  # https://github.com/rafaelmardojai/firefox-gnome-theme#manual-installation
  home.file.".mozilla/firefox/dev-edition-default/chrome/firefox-gnome-theme".source =
    "${generated.firefox-gnome-theme.src}";
}
