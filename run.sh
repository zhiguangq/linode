#install nginx
sudo apt-get install -y nginx
cp -rf ./nginx-default /etc/nginx/sites-available/default
service nginx restart




