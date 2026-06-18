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
 nodejs
 yarn
 typescript
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

 #adb 
 android-tools
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
   editor = "micro"; 
  };
 };
};



 #java
 
 programs.java = {
 	enable = true;
 	package = pkgs.jdk25;
 };
 
}
