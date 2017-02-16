mkdir build
cd build

# Configure step
cmake -G Ninja -DCMAKE_INSTALL_PREFIX=$PREFIX \
 -DCMAKE_BUILD_TYPE=RelWithDebInfo \
 -DCMAKE_PREFIX_PATH=$PREFIX \
 -DCMAKE_SYSTEM_PREFIX_PATH=$PREFIX \
 -DINSTALL_DIR=$PREFIX \
 -DUSE_PYTHON=OFF \
 -DUSE_GUI=OFF \
 -DUSE_OCC=ON \
 ..

# Build step
ninja

#fi
# Install step
ninja install
