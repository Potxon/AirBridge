#!/data/data/com.termux/files/usr/bin/bash

while true
do
clear
echo "=== TunnelRelay Menu ==="
echo "1. Setup Device A"
echo "2. Start Tunnel"
echo "3. Info"
echo "4. Exit"

read -p "Choose: " choice

case $choice in
  1) bash setup_termux.sh ;;
  2) bash start_tunnel.sh ;;
  3) echo "TunnelRelay routes internet via SSH + Cloudflare."; read ;;
  4) exit ;;
  *) echo "Invalid option"; sleep 1 ;;
esac
done
