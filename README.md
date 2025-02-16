# A Completed Guides Run Bl0ckm3sh Bot w/ Ruby.rb

A Ruby bot for automating interactions with the Bl0ckm3sh N3twork, utilizing proxies (SOCKS5, HTTP/S) to enhance uptime and earning potential.

> [!WARNING]
> I am not responsible for any loss or damage caused by this bot. Use it at your own risk are banned.

## 🦾 Bot Features
- Direct Connection
- Connection by Proxy (support socks/5 http/s)

## Register

- If you don't have a Blockmesh Network Account yet, register here [https://app.blockmesh.xyz](https://app.blockmesh.xyz/register?invite_code=8d76125c-e64f-4cd5-b711-3425585355a8)
- Proxies Accounts (residentials) I appreciate you
- [2captcha.com](https://2captcha.com/?from=24919769) ![rating](https://img.shields.io/badge/rating_good-★★★★★-brightgreen)
- [app.proxies.fo](https://app.proxies.fo/ref/55adc8e5-8ae3-6bf2-03ba-c23e086fcae3) ![rating](https://img.shields.io/badge/rating_good-★★★★★-brightgreen)
- [bartproxies.com](https://bartproxies.com/login?referral=wKXo8Uar) ![rating](https://img.shields.io/badge/rating_good-★★★★★-brightgreen)
- [seamlessproxies.com](https://www.seamlessproxies.com/dashboard/shop) ![rating](https://img.shields.io/badge/rating_good-★★★★☆-brightgreen)

---

## Setup Install

**1. Cloning This Repository**
  ```bash
  git clone https://github.com/arcxteam/blokmes-rb.git
  cd blokmes-rb
  ```
**2. No have `ruby and screen` yet, need installed**
  ```bash
  sudo apt update &&
  sudo apt install -y ruby ruby-dev build-essential &&
  sudo apt install screen
  ```
**3. Install Dependencies**
  ```bash
  bundle install
  ```
**4. Setting proxy (optional)**
  - if you want to use proxy setup first on `nano proxy.txt`
  - format proxy `http or https://host:port:user:pass`
    
**5. Create screen at first time**
  ```bash
  screen -S blokmes
  ```
**6. Run at second time with screen**
  ```bash
  ruby main.rb
  ```
- So, For close the logs with command `CTRL+A+D`

# Enjoys Logs!
- For logs 
  ```bash
  screen -ls
  ```
- You can see like here
  ```diff
  - root@jpbang:~# screen -ls
  - There is a screen on:
  + 169862.blokmes  (02/16/2025 11:09:35 PM)        (Detached)
  - 1 Socket in /run/screen/S-root.
  - root@jpbang:~#
  ````
  ```
  screen -r 169862.blokmes
  ```
