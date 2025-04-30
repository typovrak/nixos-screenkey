# ⌨️ NixOS Screenkey

> Declarative NixOS module to install and configure Screenkey, a keystroke visualization, with secure per-user settings.

## 📦 Features

- 🔒 **Secure config directory :** Creates ```~/.config/screenkey``` with ```700``` permissions and correct ownership.

- ⚙️ **Customizable settings :** Deploys your ```screenkey.json``` into the user’s config folder with ```600``` permissions.
 
- 📦 **Package management :** Installs ```screenkey``` via ```environment.systemPackages```.

- 🔄 **Idempotent :** Cleans and reconfigures on every rebuild to maintain consistent state.

- ✨ **Zero-friction :** Works out-of-the-box, no manual setup required beyond import.

- 💾 **Backup guidance :** Documentation includes commands to back up existing config before changes.

## ⚙️ Prerequisites

### 1. NixOS version
Requires NixOS 24.11 or newer.

### 2. User validation
the target user must be defined in ```config.username```. See [typovrak main nixos configuration](https://github.com/typovrak/nixos) for more details.

### 3. Backup
Before proceeding, back up existing configuration if needed
```bash
cp ~/.config/screenkey.json{,.bak}
```

## 🚀 Installation
Fetch the module directly in your main nixos configuration at ```/etc/nixos/configuration.nix``` using fetchGit
```nix
# /etc/nixos/configuration.nix

let
  nixos-screenkey = fetchGit {
    url = "https://github.com/typovrak/nixos-screenkey.git";
    ref = "main";
    rev = "744197b2e31c2d6a0e1885cf87930e73f1b6ded1"; # update to the desired commit
  };
in
{
  imports = [
    /etc/nixos/hardware-configuration.nix # system hardware settings
    /etc/nixos/variables.nix # defines config.username and other variables, see https://github.com/typovrak/nixos for more details
    (import "${nixos-screenkey}/configuration.nix")
  ];
}
```

Once imported, rebuild your system to apply changes
```bash
sudo nixos-rebuild switch
```

## 🎬 Usage

Launch ```screenkey``` in a terminal or with the dmenu in i3.

## ❤️ Support

If this module saved you time, please ⭐️ the repo and share feedback.  
You can also support me on ☕ [Buy me a coffee](https://www.buymeacoffee.com/typovrak).

## 📝 License

Distributed under the [MIT license](LICENSE.md).

## 📜 Code of conduct

This project maintains a [code of conduct](.github/CODE_OF_CONDUCT.md) to ensure a respectful, inclusive and constructive community.

## 🛡️ Security

To report vulnerabilities or learn about supported versions and response timelines, please see our [security policy](.github/SECURITY.md).

---

<p align="center"><i>Made with 💜 by typovrak</i></p>
