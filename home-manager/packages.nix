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
      # gnome-secrets
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
      signal-desktop
      appimage-run
      keepassxc
      telegram-desktop
      obsidian
      easyeffects
      elisa
      nextcloud-client
      krita
      tor
      tor-browser
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
      cachix
    ];
  };
}
