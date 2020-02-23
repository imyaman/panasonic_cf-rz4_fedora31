for num in 0 1 2 3; do echo "performance" >/sys/devices/system/cpu/cpu$num/cpufreq/scaling_governor; done
