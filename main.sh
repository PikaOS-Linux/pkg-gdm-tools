DEBIAN_FRONTEND=noninteractive

# Clone Upstream
git clone https://github.com/realmazharhussain/gdm-tools
cp -rvf ./debian ./gdm-tools/
cp -rvf ./Makefile ./gdm-tools/
cd ./gdm-tools

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
