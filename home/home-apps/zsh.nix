let
  custom = {
    background = "#1e1e2e";
    accent = "#f5c2e7";
    text = "#cdd6f4";
  };
in  {pkgs, config, ...}:{  
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;

    enableCompletion = false;

    autosuggestion = {
      enable = true;
      #highlight = "fg=${custom.accent},bold";
    };

    cdpath = [ ];

    syntaxHighlighting = {
      enable = true;
    };

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      ".." = "cd ..";
      "😼" = ''echo "nyaaaa :3"'';

    };

    history = {
      ignoreAllDups = true;
      share = true;
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    historySubstringSearch.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "encode64"
        "git"
        "perms" 
        "sudo"
        "systemd"
        "systemadmin"
        "torrent"
        "z"
      ];
    };

    prezto = {
      enable = true;
      caseSensitive = false;
      color = true;
      
      prompt = {

      };

      extraModules = [
        "zpty"
      ];
    };

    initExtra = 
      ''
      bindkey '^I' autosuggest-accept
      neofetch
      '';
  };

  

  #programs.fzf.enable = true;
}