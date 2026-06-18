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
    dates = "daily";
    persistent = true;          
    channel = "https://nixos.org/channels/nixos-26.05";
  };

  networking.networkmanager.enable = true;

  security.rtkit.enable = true;
  
  services.pipewire = {
  	enable = true;
  	alsa.enable = true;
  	alsa.support32Bit = true;
  	pulse.enable = true;
  };
}
