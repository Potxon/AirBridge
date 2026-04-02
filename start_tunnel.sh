#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Starting Cloudflare tunnel..."
cloudflared tunnel run --url ssh://localhost:8022 my-tunnel
