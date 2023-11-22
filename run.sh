#install nginx
sudo apt-get install -y nginx
cp -rf ./nginx-default /etc/nginx/sites-available/default
service nginx restart

#install ffmpeg
apt-get install -y ffmpeg

#install yt-dlp
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp

#install go
curl -L https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz -o /root/go1.20.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /root/go1.20.4.linux-amd64.tar.gz
echo export PATH=$PATH:/usr/local/go/bin >> /root/.profile
echo go env -w GO111MODULE=on >> /root/.profile
source /root/.profile
mkdir /root/go


#cd /root/go
#/usr/local/go/bin/go install github.com/go-kratos/kratos/cmd/kratos/v2@latest
git clone https://github.com/zhiguangq/youtubeFile.git
cd /root/go/youtubeFile
#/usr/local/go/bin/go build -o ./bin/ ./...
chmod +x ./bin/linode
nohup ./bin/linode -conf ./configs/ >a.log 2>&1 &

#install amis
cd /root
apt-get install -y npm
git clone https://github.com/zhiguangq/amis-admin.git
cd amis-admin
npm i
nohup node server.js >amis.log 2>&1 &











