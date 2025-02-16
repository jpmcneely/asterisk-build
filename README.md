# asterisk-build

Scripts to build Asterisk on Debian

Versions at Last Update:
-   Debian 12
-   Asterisk 22.2.0
-   DAHDI 3.4.0
-   PRI 1.6.1
-   SS7 2.0.1


Scripts:
-   pre-build/00-getpkgs.sh: Fetch packages using apt
-   pre-build/01-getfiles.sh: Fetch source archives using wget and getfiles
-   00-prebuild.sh: Run scripts in pre-build directory
-   01-build-phase1.sh: Unpack archives - Build DAHDI,PRI,SS7 - Run configure
    for Asterisk
-   02-ast-config.sh: Run menuselect to choose Asterisk options and modules
-   03-build-phase2.sh: Build Asterisk
-   04-postinstall.sh: Create user, set permissions, set up systemd svc


Other:
-   asterisk.service: Systemd unit file for asterisk



Begin with fresh Debian 12 install.  Use apt to install git to pull the repo.

Run the script in order: 00-prebuild.sh, 01-build-phase1.sh, 02-ast-config.sh, 
03-build-phase2.sh, 04-postinstall.sh

Asterisk will be installed with the sample configs.  Systemd will be set up for
the asterisk service.

