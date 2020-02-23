for num in 0 1 2 3; do sudo /usr/bin/echo "powersave" >/sys/devices/system/cpu/cpu$num/cpufreq/scaling_governor; done

echo "Current Freq : "
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
