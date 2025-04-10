# nixos-screenkey

nixos-screenkey = fetchGit {
	url = "https://github.com/typovrak/nixos-screenkey.git";
	ref = "main";
};

(import "${nixos-screenkey}/configuration.nix")
