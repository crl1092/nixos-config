{config, pkgs, ...}:

{
 # Pacotes non-free
 
 nixpkgs.config.allowUnfree = true;

 environment.systemPackages = with pkgs; [
 
 # C/C++

 gcc
 gnumake
 gdb

 # React native
 nodejs_20
 nodePackages.yarn
 nodePackages.typescript
 watchman
 

 # Kotlin & Java
 kotlin
 jdk25
 
 # Suporte aos outros
 git
 gh

 # Editores de código
 vscode
 micro
 jetbrains.idea
 
];

 #Config do git 

 programs.git = {
  enable = true;
  config = {
   user = {
    name = "crl1092";
    email = "rodriguescristhiano4@gmail.com";
  }; 
  init = {
   defaultBranch = "main"; 
  };
  core = { 
   editor = "nano"; 
  };
 };
};

 #adb 

 programs.adb.enable = true;

 #java
 
 programs.java = {
 	enable = true;
 	package = pkgs.jdk25;
 };
 
}
