sudo apt-get install -y libmicrohttpd-dev
sudo apt-get install libtool m4 automake
sudo apt-get install build-essential manpages-dev
sudo autoupdate

git clone https://github.com/etr/libhttpserver.git
cd libhttpserver

sudo autoupdate
sudo ./bootstrap

mkdir build
cd build

sudo ../configure
sudo make
sudo make install

cd ../examples
g++ hello_world_1.cpp -o hello -l httpserver
./hello
