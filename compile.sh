clear
echo "***********************KERNEL COMPILER***************************"
echo "1    Start Compiling"
echo "2    make clean"
printf "%s" "Please make your decision :)"
	read RETVAL
	if [ "x$RETVAL" = "x1" ] ; then
clear
export ARCH=arm
export CROSS_COMPILE=~/android/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi-
make ltx_defconfig
read -p "press enter to start the compiler"
make -j4
read -p "finnished?"
. compile.sh
	elif [ "x$RETVAL" = "x2" ] ; then
clear
make clean
read -p "done"
. compile.sh
	fi
}
