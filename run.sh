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
wget https://dl.google.com/go/go1.20.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz
echo export PATH=$PATH:/usr/local/go/bin >> ~/.profile
echo go env -w GO111MODULE=on >> ~/.profile
source ~/.profile
mkdir ~/go

cd go
go install github.com/go-kratos/kratos/cmd/kratos/v2@latest
git clone https://github.com/zhiguangq/youtubeFile.git
cd youtubeFile
go build -o ./bin/ ./...
nohup ./bin/linode -conf ./configs/ >a.log 2>&1 &






