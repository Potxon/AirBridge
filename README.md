#  TunnelRelay
Remote Internet Relay using Termux + SSH + Cloudflare Tunnel + HA Tunnel

TunnelRelay allows you to route internet traffic from one device (Device A) to another (Device B) using SSH tunneling and mobile payload injection tools like HA Tunnel.

---

##  Features
-  Share internet remotely from Device A to Device B
-  SSH-secured connection
-  Works with Cloudflare Tunnel (no port forwarding)
-  Compatible with HA Tunnel configs
-  Experimental payload-based routing

---

##  How It Works

Device B → HA Tunnel → Internet → Cloudflare Tunnel → Device A (Termux SSH) → WiFi

---

##  Quick Start (Device A)

```bash
pkg update && pkg upgrade -y
pkg install openssh cloudflared -y
passwd
sshd
```

---

##  Full Setup Guide

## 📱 Device A (Server - Termux)
Install Termux
Run:
```bash
pkg update && pkg upgrade -y
pkg install openssh -y
passwd
sshd
```

Install Cloudflare Tunnel:
```bash
pkg install cloudflared -y
cloudflared tunnel login
cloudflared tunnel create my-tunnel
cloudflared tunnel route dns my-tunnel your-subdomain.example.com
cloudflared tunnel run --url ssh://localhost:8022 my-tunnel
```

## 📱 Device B [ANDRIOD!!!] (Client - HA Tunnel)
Install HA Tunnel Plus
Create config:
```bash
Host: your-subdomain.example.com
Port: 8022
Username/Password: Termux credentials
Enable:
VPN/TUN Mode
```

## Example Payload:
```bash
CONNECT [host] HTTP/1.1[crlf]
Host: [your SNI or injection host]
[crlf][crlf]
```
---

##  Security Tips
* Use SSH keys instead of passwords
* Keep Termux updated
* Avoid exposing unnecessary ports
* Use strong credentials

---
  
##  Limitations
* Device A must stay online
* High battery usage
* Performance depends on network
* Payload-based routing is not guaranteed

