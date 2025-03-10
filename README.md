# Flutter Automatic Installation Script
![Flutter Installation](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBXiMsJlDa3otyeDGp4pckvBm_5LauYDHQVg&s)  
*(flutter hate ubuntu <3)*

:rocket: **Automate your Flutter environment setup on Ubuntu with a single script!** :rocket:

This repository provides a **bash script** that installs:
- [Flutter SDK](https://docs.flutter.dev/)
- Android SDK (Command-line tools)
- Android Studio (via Snap)
- Necessary dependencies for building Android apps on Ubuntu

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Troubleshooting](#troubleshooting)
- [Keywords](#keywords)
- [License](#license)

## Features
- Automatically downloads and configures the **Flutter SDK** (stable channel).
- Installs and configures the **Android SDK** with the required build tools.
- Installs **Android Studio** (Snap package).
- Handles 32-bit dependencies for Android emulator compatibility.
- Updates your environment variables (`PATH`, `ANDROID_HOME`) so Flutter is ready to go.
- Disables web and desktop targets (optional) if you only want to develop for Android.

## Requirements
- Ubuntu (tested on 22.04, 24.04, or similar distributions).
- Internet connection (to download Flutter, Android SDK, etc.).
- **sudo** privileges to install required packages.

## Usage
1. **Clone** this repository:
   ```bash
   git clone https://github.com/yourusername/flutter-install-ubuntu.git
   cd Flutter_Automatic_Installation_on_Ubuntu

2. **execute** this script:
    ```
   chmod +x Instalation_Flutter_Script.sh
    ./Instalation_Flutter_Script.sh


## OBS

**if it goes wrong, call batman**
or
**create an issue here <3**

##Create for AlcivanLucas