BUILD_DIR="${PWD}/release/src-rt-9.x/src"
TOOLCHAINS="${PWD}/release/src-rt-9.x/src/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin"
export PATH="${PATH}:${TOOLCHAINS}"
rm ${PWD}/RT-AC1200G+_*.trx ${PWD}/RT-AC1200G+_*.md5
#export LD_LIBRARY_PATH="${TOOLCHAINS}/../lib:${TOOLCHAINS}/../arm-brcm-linux-uclibcgnueabi/lib:${PATH}"
make -C $BUILD_DIR RT-AC1200G+ 2>&1 | tee $BUILD_DIR/../../../compile.log
mv ${PWD}/release/src-rt-9.x/src/image/RT-AC1200G+_*.trx ${PWD}/
mv ${PWD}/release/src-rt-9.x/src/image/RT-AC1200G+_*.md5 ${PWD}/
