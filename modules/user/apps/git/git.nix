{
  config,
  pkgs,
  lib,
  ...
}:

{

  programs.git = {
    enable = true;
    userName = "StevenBuglione";
    userEmail = "stevenbuglione1@gmail.com";
    extraConfig = {
      gpg = {
        format = "ssh"; 
      };
      "gpg \"ssh\"" = {
        program = "/mnt/c/Users/steve/AppData/Local/1Password/app/8/op-ssh-sign-wsl";
      };
      commit = {
        gpgsign = true; 
      };
      user = {
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIADXEW0ESKUfvgzAYIuHH/Rehcvhm8j4op7VlpLClfvC";
      };
      core = {
        sshCommand = "ssh.exe";
      };
    };
  };
}
