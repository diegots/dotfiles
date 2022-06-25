There exist a tool for adding custom resolutions in Windows, [Custom Resolution Utility](https://www.monitortests.com/forum/Thread-Custom-Resolution-Utility-CRU).

In Linux can be done with the command line. `cvt` tool can be used to get Modelines for any desired resolution:
```
cvt 1920 1080
```

Use variables to set all values:
```
h_res='1920'
v_res='1080'
freq='75.0'
config_name="$h_resx$v_res_$freq"
output='VGA-1'
```

Define the new mode:
```
xrandr --newmode "$config_name" $mode_line
```

Asociate it with one output:
```
xrandr --addmode "$output" "$config_name"
```

Activate it:
```
xrandr --output "$output" --mode "$config_name"
```