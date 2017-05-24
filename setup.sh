# Update package repository
apt-get update
apt-get install libjpeg-dev libpng-dev libtiff-dev libgif-dev
apt-get install automake

# Install WebP
echo "Downloading webp..."
git clone https://github.com/johnpaulada/webp.git
cd webp
echo "Installing webp..."
./configure && make && make install
cd ..
echo -e "\e[32mInstalled webp."

# Install jpegtran
echo "Downloading jpegtran..."
git clone https://github.com/johnpaulada/jpegsrc.git
cd jpegsrc
echo "Installing jpegtran..."
./configure && make && make install
cd ..
echo -e "\e[32mInstalled jpegtran."

# jpegtran libjpeg problem fix
ranlib /usr/local/lib/libjpeg.a
ldconfig /usr/local/lib

# Install OptiPNG
echo "Downloading optipng..."
git clone https://github.com/johnpaulada/optipng.git
cd optipng
echo "Installing optipng..."
./configure && make && make install
cd ..
echo -e "\e[32mInstalled optipng."

# Install guetzli
echo "Downloading guetzli..."
git clone https://github.com/google/guetzli.git
cd guetzli
echo "Installing guetzli..."
make
cp ./bin/Release/guetzli /usr/bin
cd ..
echo -e "\e[32mInstalled guetzli."

# Install pngquant
echo "Downloading pngquant..."
git clone --recursive https://github.com/pornel/pngquant
cd pngquant
echo "Installing pngquant..."
make && make install
cd ..
echo -e "\e[32mInstalled pngquant."

# Install zopfli
echo "Downloading zopfli..."
git clone https://github.com/google/zopfli.git
cd zopfli
echo "Installing zopfli..."
make
cp ./zopfli /usr/bin
cd ..
echo -e "\e[32mInstalled zopfli."
