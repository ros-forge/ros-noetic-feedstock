:: Generated by vinca http://github.com/ros-forge/vinca.
:: DO NOT EDIT!
setlocal

:: MSVC is preferred.
set CC=cl.exe
set CXX=cl.exe

set CATKIN_MAKE_ISOLATED=src\ros-noetic-catkin\bin\catkin_make_isolated
set CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH:\=/%

%PYTHON% %CATKIN_MAKE_ISOLATED% ^
    --install-space %LIBRARY_PREFIX% ^
    --use-ninja ^
    --install ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_SHARED_LIBS=ON ^
    -DPYTHON_EXECUTABLE=%PYTHON% ^
    -DCATKIN_SKIP_TESTING=ON
if errorlevel 1 exit 1

:: Copy the [de]activate scripts to %PREFIX%\etc\conda\[de]activate.d.
:: This will allow them to be run on environment activation.
for %%F in (activate deactivate) DO (
    if not exist %PREFIX%\etc\conda\%%F.d mkdir %PREFIX%\etc\conda\%%F.d
    copy %RECIPE_DIR%\%%F.bat %PREFIX%\etc\conda\%%F.d\%PKG_NAME%_%%F.bat
)
