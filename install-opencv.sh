#remove orginal ffmpeg x264
sudo apt-get -qq remove ffmpeg x264 libx264-dev

# KEEP UBUNTU OR DEBIAN UP TO DATE
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# INSTALL THE DEPENDENCIES
# Build tools:
sudo apt-get install -y build-essential cmake

# GUI:
sudo apt-get install -y qt5-default libvtk6-dev

# Media I/O:
sudo apt-get install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# Video I/O:
sudo apt-get install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Parallelism and linear algebra libraries:
sudo apt-get install -y libtbb-dev libeigen3-dev

# Python:
sudo apt-get install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy

# Java:
sudo apt-get install -y ant default-jdk

# Documentation:
sudo apt-get install -y doxygen


# INSTALL THE LIBRARY (YOU CAN CHANGE '3.0.0' FOR THE LAST STABLE VERSION)

sudo apt-get install -y unzip wget
wget https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip 3.0.0.zip
rm 3.0.0.zip
mv opencv-3.0.0 OpenCV
cd OpenCV
mkdir build
cd build
cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo ldconfig


# EXECUTE SOME OPENCV EXAMPLES AND COMPILE A DEMONSTRATION
Example using OpenCV
cd /usr/local/share/OpenCV/samples/c

– Execute following commands
sudo chmod +x build_all.sh
sudo ./build_all.sh
./facedetect "/usr/share/opencv/haarcascades/haarcascade_frontalface_alt.xml" lena.jpg
or
./facedetect --cascade="/usr/share/opencv/haarcascades/haarcascade_frontalface_alt.xml" lena.jpg
# To complete this step, please visit 'http://milq.github.io/install-opencv-ubuntu-debian'.
