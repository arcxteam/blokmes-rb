# 🌐⛓ Bl0ckmesh Running based Ruby.py
A Ruby bot for automating interactions with the Blockmesh Network, utilizing proxies (SOCKS5, HTTP/S) to enhance uptime and earning potential.

> [!WARNING]
> I am not responsible for any loss or damage caused by this bot. Use it at your own risk.

## 🦾 Bot Features
- Direct Connection
- Connection Through Proxy (support socks/5 http/s)

## Register

- If you don't have a Blockmesh Network Account yet, register here [https://app.blockmesh.xyz](https://app.blockmesh.xyz/register?invite_code=8d76125c-e64f-4cd5-b711-3425585355a8)

## Setup Install

**1. Cloning This Repository**
  ```bash
  git clone https://github.com/arcxteam/blokmes-rb.git
  cd blokmes-rb
  ```
**2. No have `ruby and pm2` yet, need installed**
  ```bash
  sudo apt update &&
  sudo apt install -y ruby ruby-dev build-essential &&
  npm install pm2 -g
  ```
**3. Install Dependencies**
  ```bash
  bundle install
  ```
**4. Setting proxy (optional)**
  - if you want to use proxy setup first on `nano proxy.txt`
  - format proxy `http or https://host:port:user:pass`
    
**5. Run at first time**
  ```bash
  ruby main.rb
  ```
- So, close the logs with command `CTRL+C`
  
**6. Run at second time with PM2**
  ```bash
  pm2 start main.rb --interpreter ruby --name blokmes-bot
  ```

# Enjoys!
- Login To your Blockmesh Account ( Automatic saved to data.json )
