{ pkgs, config, ... }:
{
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
      "😿" = ''echo nyaaaa 3:'';
      "neofetched" =
        ''clear && neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_distro NixOS --ascii_colors 225 117 0 0 0 0'';
      "sshilo" = "ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-rsa";
      "sshfsvm" = "sshfs lex@192.168.178.175:/etc/nixos /home/lexi/nixvm";
    };

    history = {
      ignoreAllDups = true;
      share = true;
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    historySubstringSearch = {
      enable = true;
      #searchDownKey = "";
      #searchUpKey = "";
    };

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

    /*
      prezto = {
        enable = true;
        caseSensitive = false;
        color = true;
        autosuggestions.color = custom.accent;
        historySubstring = {
          foundColor = custom.accent;
          notFoundColor = custom.text;
        };

        prompt = {

        };

        extraModules = [
          "zpty"
        ];
      };
    */

    initExtra = ''
      bindkey '^I' autosuggest-accept
      neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0
    '';
  };
  #programs.fzf.enable = true;
}
