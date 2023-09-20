git clone https://github.com/kyriosdata/ig
cd ig
chmod +x /ig/*.sh
./_updatePublisher.sh --yes
./_genonce.sh --yes
cp -r /ig/output/. /var/www/html/