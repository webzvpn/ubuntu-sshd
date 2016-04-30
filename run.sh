#!/bin/bash
PASS=$(pwgen -s 12 1)
echo "=> Setting root password"
echo "root:$PASS" |chpasswd
echo "=> Done!"
echo "========================================================================"
echo "You can now connect to this Ubuntu SSH Server using:"
echo ""
echo "    ssh root@host"
echo "    Password: $PASS"
echo ""
echo "========================================================================"
/usr/sbin/sshd -D
