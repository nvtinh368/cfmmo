#!/bin/sh

echo "Starting vpn service..."



# check ovpn config
OVPN_FILE=$(shuf -n1 -e /ovpn/*.ovpn)

echo "Connecting to VPN by $OVPN_FILE"

openvpn --config $OVPN_FILE
#openvpn --config $OVPN_FILE --daemon

