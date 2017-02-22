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
 -DUSE_GUI=OFF \
 -DUSE_SUPERBUILD=OFF \
 -DOCC_INCLUDE_DIR=$PREFIX/include/oce \
 ..

# Build step
ninja -j 3

# Install step
ninja install
