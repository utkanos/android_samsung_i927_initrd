#!/system/bin/sh

#script by Da_G to set up su and busybox adapted for i927(utkanos)
mount -o rw,remount /dev/block/mmcblk0p2 /system
/busybox cp /su /system/xbin/su
/busybox cp /busybox /system/xbin/busybox
/system/xbin/busybox --install -s /system/xbin
/system/xbin/busybox chmod 4755 /system/xbin/su
#init.d tweak - utkanos
/system/xbin/busybox run-parts /system/etc/init.d/
mount -o ro,remount /dev/block/mmcblk0p2 /system
