cmake -Bbuild -GNinja -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=Release -DGIT_HASH=ad2d88444242f2314cb93037bc14d9a75193be13 -DPython3_EXECUTABLE="%PYTHON%"
if errorlevel 1 exit 1
cmake --build build
if errorlevel 1 exit 1
cmake --install build
if errorlevel 1 exit 1
