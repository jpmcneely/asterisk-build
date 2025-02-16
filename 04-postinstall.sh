#!/bin/bash

echo "Creating user..."
useradd -c "Asterisk PBX" -d /var/lib/asterisk -M -s /bin/bash asterisk

echo "Creating systemd unit..."
cp asterisk.service /lib/systemd/system/

echo "Setting permissions..."
cd /var/lib
chown -R asterisk:asterisk asterisk
cd /var/run
chown -R asterisk:asterisk asterisk
cd /etc
chown -R asterisk:asterisk asterisk
cd /var/log
chown -R asterisk:asterisk asterisk
cd /var/spool
chown -R asterisk:asterisk asterisk

echo "Enabling service..."
systemctl enable asterisk.service
systemctl daemon-reload
systemctl status asterisk.service

echo ""
echo "Set the password for the asterisk user:"
passwd asterisk

echo ""
echo "Installation complete!"
echo ""

# EOF
