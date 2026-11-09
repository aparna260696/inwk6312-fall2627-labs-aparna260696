#!/bin/bash

# Fault 1: Incorrect ASN on r22
sed -i 's/router bgp 65002/router bgp 65102/g' fault/configs/r22.cfg

# Fault 2: Incorrect IP address on r12
sed -i 's/ip address 10.1.0.21/ip address 10.1.0.121/g' fault/configs/r12.cfg

# Fault 3: Shut down r23 Ethernet1
sed -i '/^interface Ethernet1$/,/^!/ {
    /^interface Ethernet1$/a\   shutdown
}' fault/configs/r23.cfg

echo "Three faults introduced."
