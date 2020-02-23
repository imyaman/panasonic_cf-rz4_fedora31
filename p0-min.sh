#for num in 0 1 2 3; do 
#/usr/bin/echo "powersave" >/sys/devices/system/cpu/cpu$num/cpufreq/scaling_governor; 
#done

for num in 0 1 2 3; do 
  /usr/bin/cat /sys/devices/system/cpu/cpu$num/cpufreq/cpuinfo_min_freq > /sys/devices/system/cpu/cpu$num/cpufreq/scaling_min_freq 
  /usr/bin/cat /sys/devices/system/cpu/cpu$num/cpufreq/cpuinfo_min_freq > /sys/devices/system/cpu/cpu$num/cpufreq/scaling_max_freq 
done

echo "Current Freq : "
/usr/bin/cat /sys/devices/system/cpu/cpu[0-3]/cpufreq/scaling_cur_freq
