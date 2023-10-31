# Upgrade systems
sudo apt-get update && sudo apt-get upgrade

# Required dependencies
sudo apt install -y build-essential git xmltoman autoconf automake libtool libdaemon-dev libpopt-dev libconfig-dev libasound2-dev libpulse-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev

# Copy config
sudo cp ./shairport-sync.conf /etc/shairport-sync.conf

# Clone repo
git clone https://github.com/mikebrady/shairport-sync.git

# Configure
cd shairport-sync
autoreconf -i -f
./configure --sysconfdir=/etc --with-alsa --with-pa --with-pipe --with-avahi --with-ssl=openssl --with-metadata --with-soxr --with-systemd

# Build & install
make
sudo make install 

# Enable autostart of the service
sudo systemctl enable shairport-sync.service
sudo service shairport-sync start
