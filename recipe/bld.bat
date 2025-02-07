cmake -Bbuild ^
  -GNinja ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DGIT_HASH=OFF ^
  -DUSE_C_MALLOC=ON ^
  -DFORCE_EXPORT_SYMBOLS=ON ^
  -DTESTS=OFF
if errorlevel 1 exit 1
cmake --build build
if errorlevel 1 exit 1
cmake --install build
if errorlevel 1 exit 1
