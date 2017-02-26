# Install

Webcampak has initially been designed as an appliance, no specific caution was taken to ensure compatibility with pieces of software other than those provided by the installation script.

We strongly encourage you to setup Webcampak on a fresh Ubuntu installation, and to ensure there is nothing you want to keep on the system (Webcampak might wipe some directories).

The install script will download and install all necessary packages and configure the system for Webcampak operation, previous configuration will be erased.
 
## Pre-requisites

We strongly simplified Webcampak installation since previous versions. To being, simply install a fresh Ubuntu 16.04 Server LTS and ensure the username is "webcampak". 
Your host will need to be connected to the Internet during the installation process.

## Install Ubuntu 16.04 Server

Caution: Webcampak is not compatible with other versions than Ubuntu Server. Using a desktop version will cause issues.

## Install Webcampak

Download the latest version of the install script and run it when connected as "webcampak".

```bash
webcampak@wpak078:~$ wget https://raw.githubusercontent.com/Webcampak/core/develop/install/install.Ubuntu16.04.sh
--2017-02-11 09:01:45--  https://raw.githubusercontent.com/Webcampak/core/develop/install/install.Ubuntu16.04.sh
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.124.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.124.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 12931 (13K) [text/plain]
Saving to: 'install.Ubuntu16.04.sh'

install.Ubuntu16.04.sh                                             100%[==============================================================================================================================================================>]  12.63K  --.-KB/s    in 0s      

2017-02-11 09:01:45 (85.4 MB/s) - 'install.Ubuntu16.04.sh' saved [12931/12931]

webcampak@wpak078:~$ bash install.Ubuntu16.04.sh
```

The system will ask for password once, and should carry on with the entire installation.

```bash
11 February 2017 -  9:08 You are currently connected as: webcampak
11 February 2017 -  9:08 System: Distribution updated and upgrade
[sudo] password for webcampak: 
```

Installation time depends of your Internet connection. At the end of the installation, you will be prompted to connect via your web browser. 

```bash
11 February 2017 - 11:05 Installation completed, Default User/Password are: root/webcampak you will be asked to change those at first connection
11 February 2017 - 11:05 Open your web browser and connect to https://WECAMPAK-IP/
11 February 2017 - 11:05 Exiting .....
```

