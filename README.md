# Panasonic Let's note CF-RZ4 and Fedora 31

## Panasonic Let's note CF-RZ4 BIOS

* "Secure Boot" : disable
* "UEFI" : enable


## Fedora 31

* /etc/X11/xorg.conf.d/20-intel.conf

```
Section "Device"
        Identifier "My Intel Graphics"
        Driver "intel"
        Option "Backlight" "intel_backlight"
EndSection
```

* p0-min.sh

Set CPU freq 800MHz 

```
for num in 0 1 2 3; do 
  /usr/bin/cat /sys/devices/system/cpu/cpu$num/cpufreq/cpuinfo_min_freq > /sys/devices/system/cpu/cpu$num/cpufreq/scaling_min_freq 
  /usr/bin/cat /sys/devices/system/cpu/cpu$num/cpufreq/cpuinfo_min_freq > /sys/devices/system/cpu/cpu$num/cpufreq/scaling_max_freq 
done

echo "Current Freq : "
/usr/bin/cat /sys/devices/system/cpu/cpu[0-3]/cpufreq/scaling_cur_freq
```
