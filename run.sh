#install nginx
sudo apt-get install -y nginx
cp -rf ./nginx-default /etc/nginx/sites-available/default
service nginx restart

#install ffmpeg
apt-get install -y ffmpeg

#install yt-dlp
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
chmod a+rx /usr/local/bin/yt-dlp




