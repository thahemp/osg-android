#!/bin/bash

# This must match the path to your osg-android build
BASE_PATH=/home/midcon1/GIT-repos/osg-android

mkdir -p build && cd build

cmake .. \
-DOSG_BUILD_PLATFORM_ANDROID=ON \
-DDYNAMIC_OPENTHREADS=OFF \
-DDYNAMIC_OPENSCENEGRAPH=OFF \
-DOSG_GL1_AVAILABLE=OFF \
-DOSG_GL2_AVAILABLE=OFF \
-DOSG_GL3_AVAILABLE=OFF \
-DOSG_GLES1_AVAILABLE=OFF \
-DOSG_GLES2_AVAILABLE=ON \
-DOSG_GL_LIBRARY_STATIC=OFF \
-DOSG_GL_DISPLAYLISTS_AVAILABLE=OFF \
-DOSG_GL_MATRICES_AVAILABLE=OFF \
-DOSG_GL_VERTEX_FUNCS_AVAILABLE=OFF \
-DOSG_GL_VERTEX_ARRAY_FUNCS_AVAILABLE=OFF \
-DOSG_GL_FIXED_FUNCTION_AVAILABLE=OFF \
-DANDROID_ABI="armeabi armeabi-v7a" \
-DANDROID_PLATFORM=19 \
-DANDROID_STL="gnustl_static" \
-DANDROID_DEBUG=ON \
-DANDROID_OPTIM_NEON=ON \
-DANDROID_OPTIM_ARM32=ON \
-DJ=8 \
-DGDAL_DIR:PATH="$BASE_PATH/3rdparty/gdal/include"

make
