{ config, pkgs, ... }:

{
  # --- Coletor de Lixo (Garbage Collector) ---
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  # --- Otimização da Nix Store ---
  nix.settings.auto-optimise-store = true;

  # --- Atualizações Automáticas do Sistema ---
  system.autoUpgrade = {
    enable = true;
    allowReboot = false; 
    dates = "04:00";          
    channel = "https://nixos.org/channels/nixos-25.11";
  };
}
