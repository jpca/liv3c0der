# Install liv3c0der in linux

## Prerequisities
Debian or Ubuntu, 1024 Mb memory, 20Gb disk

```bash
apt-get update
apt-get install ruby
apt-get install gem
gem install sinatra
```

## node install

```bash
sudo apt-get install python g++ make checkinstall
src=$(mktemp -d) && cd $src
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*
./configure
fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install
sudo dpkg -i node_* #node_0.10.26-1_amd64.deb 
```

### npm install
> curl https://www.npmjs.org/install.sh | sudo sh

# create user livecoder

adduser livecoder --ingroup www-data 
su - livecoder
git clone git://github.com/halfbyte/sample-server # git already installed
#TODO command lines to upload ST-01 samples http://aminet.net/package/mods/inst/st-01 under /home/livecoder/sample-server/samples
cd sample-server
su root
gem install bundler
apt-get install ruby1.9.1-dev
bundle install
npm install connect
exit
```

# upload liv3c0der

> git clone git://github.com/halfbyte/liv3c0der

#upload node_server.js to /home/livecoder/liv3c0der/
#upload liv3c0der.sh to /home/livecoder
#update javascript/audio_engine.js to use http://realpip:4567 instead of localhost:4567
#todo: update liv3c0der.js to change save shortcut form apple-enter to ctrl-enter and ace editor theme

# start solution

launch start command
> sh liv3c0der_start.sh

and browse to http://realip:8000/ (samples are on :4567) 