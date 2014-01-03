cd /usr/local
sudo apt-get -y install build-essential cmake pkg-config
sudo apt-get -y install libjpeg62-dev 
sudo apt-get -y install libtiff4-dev libjasper-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install python-dev python-numpy
sudo apt-get -y install libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt-get -y install libtbb-dev
sudo apt-get -y install libqt4-dev
git clone https://github.com/Itseez/opencv.git
cd opencv
mkdir build
cd build
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_opencv_python=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
sudo make -j2
sudo make install
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
sudo apt-get -y install python-scipy python-numpy python-pygame python-setuptools python-pip
sudo pip install https://github.com/sightmachine/SimpleCV/zipball/develop
