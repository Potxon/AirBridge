# 🌐 TunnelRelay
Remote Internet Relay using Termux + SSH + Cloudflare Tunnel + HA Tunnel

TunnelRelay allows you to route internet traffic from one device (Device A) to another (Device B) using SSH tunneling and mobile payload injection tools like HA Tunnel.

---

## ⚡ Features
- 📡 Share internet remotely from Device A to Device B
- 🔐 SSH-secured connection
- ☁️ Works with Cloudflare Tunnel (no port forwarding)
- 📱 Compatible with HA Tunnel configs
- 🧪 Experimental payload-based routing

---

## 🧭 How It Works

Device B → HA Tunnel → Internet → Cloudflare Tunnel → Device A (Termux SSH) → WiFi

---

## 🚀 Quick Start (Device A)

```bash
pkg update && pkg upgrade -y
pkg install openssh cloudflared -y
passwd
sshd
