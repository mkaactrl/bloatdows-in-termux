# 🚀 Bloatdows for Termux

**The most comprehensive Windows command layer for Android! Experience the full, authentic Windows XP command-line environment right on your phone!**

[![GitHub license](https://img.shields.io/badge/license-Microsoft%20EULA-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/mkaactrl/bloatdows-in-termux/pulls)
![GitHub repo size](https://img.shields.io/github/repo-size/mkaactrl/bloatdows-in-termux)

> **⚠️ Warning:** This project is an extensive simulation and will modify your Termux environment. It is recommended for advanced users and requires significant storage space.

## ✨ Features

*   **200+ Faithfully Recreated Commands:** `dir`, `ipconfig`, `tree`, `format`, `start`, `cls`, and more!
*   **Full Windows XP Environment:** Custom `C:\Termux\System32>` prompt and command aliasing.
*   **Massive System File Library:** Over 4GB of authentic Windows system file stubs and structure.
*   **Legacy Driver Support:** Load simulated drivers for classic hardware with `txtload`.
*   **Pre-installed Applications:** Includes Notepad, Calculator, and other utilities.
*   **Persistent Installation:** Modifies your `~/.bashrc` to make the environment permanent.

## 📥 Installation

**Prerequisites:**
*   Termux installed from [F-Droid](https://f-droid.org/en/packages/com.termux/) (required for full functionality)
*   At least **5GB** of free storage
*   A stable internet connection for the initial download

**Installation Steps:**

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/mkaactrl/bloatdows-in-termux.git
    cd bloatdows-in-termux
    ```

2.  **Run the automated installer:**
    ```bash
    bash INSTALL/INSTALL_THE_BLOAT.sh
    ```
    *The installation process is extensive and may take up to an hour. Do not interrupt it.*

3.  **Restart Termux:** Close and reopen Termux to apply all changes. You will be greeted by the `C:\Termux\System32>` prompt.

## 🕹️ Usage

Once installed, simply use the Windows commands as you normally would!

```bash
C:\Termux\System32> dir
C:\Termux\System32> ipconfig /all
C:\Termux\System32> tree
C:\Termux\System32> notepad notes.txt
C:\Termux\System32> cls
```

🗑️ Uninstallation

Uninstallation is not officially supported, as the changes are extensive and integrated into the environment. The provided uninstall.exe.sh utility may assist but cannot guarantee a complete revert.

A full uninstall may require manually editing your ~/.bashrc file and deleting the ~/.bloatdows/ directory.

🤝 Contributing

Contributions are welcome! Feel free to submit Pull Requests to add more commands, improve compatibility, or enhance the authenticity of the Windows experience.

Please ensure any new scripts follow the existing style and include appropriate "Bloatdows" branding.

📜 License

This project is provided under the terms of the Microsoft Windows 95 End-User License Agreement. See the LICENSE file for details.

This project is not affiliated with or endorsed by Microsoft Corporation.

---

Bloatdows: Because Why Not? Relive the Glory Days of Windows XP!

```
