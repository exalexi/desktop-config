{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    #package = pkgs.vscodium-fhs;
    package = pkgs.vscode-fhs;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      jnoortheen.nix-ide
      ms-vscode-remote.remote-ssh
      tomoki1207.pdf
      ms-python.python

      # QMK
      editorconfig.editorconfig

      xaver.clang-format
      llvm-vs-code-extensions.vscode-clangd
      bierner.github-markdown-preview
    ];
    profiles.default.userSettings = {

      #"editor.formatOnSave" = true;
      "files.autoSave" = "onFocusChange";
      "git.enableSmartCommit" = true;

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nixd";
      "nix.serverSettings" = {
        "nixd" = {
          "formatting" = {
            "command" = [ "nixfmt" ];
          };
        };
      };

      "nix.formatterPath" = "nixfmt";
      "window.menuBarVisibility" = "toggle";
      "workbench.colorTheme" = "Catppuccin Mocha";
      "json.format.enable" = false;
    };
  };
}
