{ pkgs, ... }: {
  fonts.packages = with pkgs; [
  	noto-fonts
  	noto-fonts-cjk
  	noto-fonts-emoji
  	cantarell-fonts
  	font-awesome
		nerdfonts
		font-awesome
  ];
}  