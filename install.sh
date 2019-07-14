wget https://raw.githubusercontent.com/wuliaoaaa/wuliaoa.github.io/master/start.sh
pip install shadowsocks
password=$1
echo '{"server":"0.0.0.0","server_port":80,"local_address":"127.0.0.1","local_port":1080,"password":"'${password}'","timeout":300,"method":"aes-256-cfb","fast_open":false}' > ssserver.json

if [ ! -f "bbr.sh" ]; then 
  wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
  chmod +x bbr.sh
  bash bbr.sh
fi
