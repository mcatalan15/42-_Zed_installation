# 42 Zed Installation

A simple script to download, extract, and configure the [Zed code editor](https://zed.dev) on systems where the `sgoinfre` directory is used (common in 42 School environments).

## Overview

This script automates the following steps:
1. Downloads the latest version of Zed for Linux from the official Zed website.
2. Extracts the files to the `sgoinfre` directory of the current user.
3. Creates a `.desktop` file to integrate Zed into the application menu, allowing it to be added to the dock.

## How to Use

### Prerequisites
Ensure you have the following installed on your system:
- **`wget`**: Used to download Zed.
- **`tar`**: Used to extract the tarball.

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/42_Zed_installation.git
   cd 42_Zed_installation

2. Run the installation script:
   ```bash
   sh ./install.sh
This command performs the following:
- Downloads the lastes version of Zed.
- Extracts it to `~/sgoinfre/`.
- Creates a `.desktop` file for easy acces in the application menu.
  
### Adding Zed to Your Dock
1. Open your application menu.
2. Search for "Zed".
3. Right-click the icon and select **Add to Favorites.**

### Troubleshooting
If the script doesn't work as expected:
1. Ensure you have permission to write to **`~/sgoinfre`**.
2. Verify that **`wget`** and **`tar`** are installed by running:
     ```bash
     wget --version
     tar --version

Feel free to open an issue if you encounter any problems or have suggestions!
