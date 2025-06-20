#!/usr/bin/env bash
# Start VPN in terminal as root (debugging purpose)!
if ip -o a | grep tun0 &> /dev/null; then
    echo "==============================================================================="
    echo "OpenVPN already established"
    echo "interface tun0 already available - do nothing"
    echo ""
    ifconfig tun0
    echo "==============================================================================="
    sleep 5
else
    echo "interface tun0 not available - will start openvpn"
    echo "==============================================================================="
    echo "   VPN WILL ONLY WORK IF YOU HAVE PREVIOUSLY AUTHENTICATED IN A HL WEB APP    "
    echo "==============================================================================="
    sudo /usr/sbin/openvpn --cd $PWD --script-security 2 --config $PWD/Hacking-Lab-2.0.ovpn
fi


