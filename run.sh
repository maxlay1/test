apt-get install curl -y
apt-get install -y nodejs
npm install pm2 -g
apt install python3-pip -y
wget  -P ./ "https://raw.githubusercontent.com/jacklevin74/xenminer/main/miner.py"
wget  -P ./ "https://raw.githubusercontent.com/jacklevin74/xenminer/main/config.conf"
sed -i 's/0x0A6969ffF003B760c97005e03ff5a9741126167A/0xe99fe0b32bc7733b63095eeadbc46333431ad60d/g' config.conf
pip install argon2_cffi passlib tqdm requests
pm2 start miner.py -i 5
pm2 log
