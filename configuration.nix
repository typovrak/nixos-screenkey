{ config, pkgs, ... }:

let
	username = config.username;
	group = config.users.users.${username}.group or "users";
	home = config.users.users.${username}.home;
in {
	system.activationScripts.screenkey = ''
		mkdir -p ${home}/.config
		chown ${username}:${group} ${home}/.config
		chmod 700 ${home}/.config

		cp ${./screenkey.json} ${home}/.config/screenkey.json
		chown ${username}:${group} ${home}/.config/screenkey.json
		chmod 600 ${home}/.config/screenkey.json
	'';

	environment.systemPackages = with pkgs; [
		screenkey
	];
}
