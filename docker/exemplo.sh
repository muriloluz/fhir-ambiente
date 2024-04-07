git clone https://github.com/kyriosdata/ig
cd ig
chmod +x *.sh
./_updatePublisher.sh --yes
./_genonce.sh --yes
cp -r output/. /./var/www/html/