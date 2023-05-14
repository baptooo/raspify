# Download & extract spotifyd
wget https://github.com/Spotifyd/spotifyd/releases/download/v0.3.5/spotifyd-linux-armhf-slim.tar.gz -P $PWD
tar xzf spotifyd-linux-armhf-slim.tar.gz
sudo cp spotifyd /usr/bin

# Create systemctl configuration
mkdir -p ~/.config/systemd/user/
cp ./spotifyd.service ~/.config/systemd/user/
systemctl --user daemon-reload

# Create spotifyd configuration
mkdir -p ~/.config/spotifyd
cp ./spotifyd.conf ~/.config/spotifyd
read -p "Spotify login?" spotify_login
read -p "Spotify password?" spotify_pass

# Replace conf file login/pass with prompted values
sed -i "s/\$SPOTIFY_LOGIN/$spotify_login/g" ~/.config/spotifyd/spotifyd.conf
sed -i "s/\$SPOTIFY_PASS/$spotify_pass/g" ~/.config/spotifyd/spotifyd.conf

# Enable systemctl to run when the raspberry boots
sudo loginctl enable-linger $USER
systemctl --user enable spotifyd.service

# Start spotifyd service
systemctl --user start spotifyd.service
