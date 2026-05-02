{config,pkgs, ...}: 

{
 #Usuário
 users.users.crist = {
    isNormalUser = true;
    description = "Cris Lima";
    extraGroups = [ "networkmanager" "wheel" "adbusers" ];
    packages = with pkgs; [
      kdePackages.kate
      
      #Navegador
      google-chrome
      
      #editores de texto
      onlyoffice-desktopeditors
      obsidian

      #Git gráfico
      github-desktop
      
      #Cominicação
      discord
      
    ];
  };
}
