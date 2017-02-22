cd netgen-mesher-git-5ee918f3e2dce99a6d1afbe3f7e7ae59f501c9d4
mkdir build
cd build
REM Configure step
cmake -G "Ninja" -DINSTALL_DIR="%LIBRARY_PREFIX%" ^
 -DCMAKE_BUILD_TYPE=Release ^
 -DINSTALL_DIR="%LIBRARY_PREFIX%" ^
 -DCMAKE_SYSTEM_PREFIX_PATH="%LIBRARY_PREFIX%" ^
 -DUSE_OCC=ON ^
 -DUSE_PYTHON=OFF ^
 -DUSE_GUI=OFF ^
 -DUSE_SUPERBUILD=OFF ^
 -DOCC_INCLUDE_DIR="%LIBRARY_PREFIX%"/include/oce ^
..
if errorlevel 1 exit 1
 
REM Build step 
ninja
if errorlevel 1 exit 1

REM Install step
ninja install
if errorlevel 1 exit 1
