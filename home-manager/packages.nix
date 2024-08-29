{pkgs, ...}: {
  imports = [
    ./modules/packages.nix
    ./modules/gaming.nix
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  ];

  packages = with pkgs; {
    linux = [
      (mpv.override {scripts = [mpvScripts.mpris];})
      spotify
      # gnome-secrets
      fragments
      figma-linux
      # yabridge
      # yabridgectl
      # wine-staging
      nodejs
      godot_4
      cloudflare-warp
      direnv
      stremio
      kmymoney
    ];
    cli = [
      bat
      eza
      fd
      ripgrep
      fzf
      lazydocker
      lazygit
    ];
  };
}
