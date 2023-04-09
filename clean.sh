BUILD_DIR="${PWD}/asuswrt/release/src-rt-9.x/src"
export PATH="$PATH:${PWD}/release/src-rt-9.x/src/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin"
make -C $BUILD_DIR clean
rm $BUILD_DIR/.config
