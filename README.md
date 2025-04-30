# ⌨️ NixOS Screenkey

> Declarative NixOS module to install and configure Screenkey, a keystroke visualization, with secure per-user settings.

## 📦 Features

- 🔒 **Secure config directory :** Creates ```~/.config/screenkey``` with ```700``` permissions and correct ownership.

- ⚙️ **Customizable settings :** Deploys your ```screenkey.json``` into the user’s config folder with ```600``` permissions.
 
- 📦 **Package management :** Installs ```screenkey``` via ```environment.systemPackages```.

- 🔄 **Idempotent :** Cleans and reconfigures on every rebuild to maintain consistent state.

- ✨ **Zero-friction :** Works out-of-the-box, no manual setup required beyond import.

- 💾 **Backup guidance :** Documentation includes commands to back up existing config before changes.

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
