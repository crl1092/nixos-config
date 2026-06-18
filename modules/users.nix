{config,pkgs, ...}: 

{
 networking.hostName = "Nixos-Dev";	
 #Usuário
 users.users.crist = {
    isNormalUser = true;
    description = "Cris Lima";
    extraGroups = [ "networkmanager" "wheel" "adbusers" ];
    packages = with pkgs; [
      #Apps da base faltantes
      kdePackages.kate
      kdePackages.dragon
      kdePackages.kamoso      
	  mission-center
      #Navegador
      google-chrome
      
      #editores de texto
      onlyoffice-desktopeditors
      obsidian

      #Git gráfico
      github-desktop
      
      #Cominicação
      discord
      zapzap
      
    ];
  };
}
