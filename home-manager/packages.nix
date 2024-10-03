{pkgs, ...}: {
  imports = [
    ./modules/packages.nix
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  ];

  packages = with pkgs; {
    linux = [
      (mpv.override {scripts = [mpvScripts.mpris];})
      spotify
      # gnome-secrets
      figma-linux
      qbittorrent
      # yabridge
      # yabridgectl
      # wine-staging
      nodejs
      godot_4
      cloudflare-warp
      direnv
      stremio
      kmymoney
      onlyoffice-bin
      floorp
      signal-desktop
      appimage-run
      keepassxc
      telegram-desktop
      obsidian
      easyeffects
      elisa
      nextcloud-client
      krita
    ];
    cli = [
      bat
      eza
      fd
      ripgrep
      fzf
      lazydocker
      lazygit
      alejandra
      devenv
    ];
  };
}
