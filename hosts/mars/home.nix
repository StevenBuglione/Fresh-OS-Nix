{
  config,
  pkgs,
  userSettings,
  ...
}:

{

  imports = [
    ../../modules/user/apps/starship/starship.nix
    ../../modules/user/apps/fastfetch/fastfetch.nix
    ../../modules/user/apps/zsh/zsh.nix
    ../../modules/user/apps/git/git.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
  };

  home = {
    username = "${userSettings.username}";
    homeDirectory = "/home/${userSettings.username}";
    stateVersion = "25.05";

    packages = with pkgs; [
      just
      vim
      curl
      fastfetch
      bash-completion
      tree
      zoxide
      fzf
      multitail
      bat
      trash-cli
      ripgrep
      kubernetes-helm
      kubectl
      xclip
      go
      treefmt
      shfmt
      pre-commit
      devcontainer
      gh
      cmake
      clang
      zls
    ];
  };

  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true; 
      nix-direnv.enable = true;
    };
  };

  programs.home-manager.enable = true;
}
