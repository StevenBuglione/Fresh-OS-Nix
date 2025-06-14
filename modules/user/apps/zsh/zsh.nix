{
  config,
  pkgs,
  userSettings,
  ...
}:

{
  programs.zsh = {
    enable = true;
    initContent = builtins.readFile ./.zshrc;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    oh-my-zsh = {
      enable  = true;
      theme   = "robbyrussell";
      plugins = [ "git" "z" ];
    };
  };
}
