# Add a new screen resolution
There exists a tool for adding custom resolutions on Windows, [Custom Resolution Utility](https://www.monitortests.com/forum/Thread-Custom-Resolution-Utility-CRU).

On Linux, it can be done with the command line `cvt`. This tool can be used to get [[modelines]] for any desired resolution:
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

Associate it with one video out:
```
xrandr --addmode "$output" "$config_name"
```

Activate it:
```
xrandr --output "$output" --mode "$config_name"
```

Ans that's all.

#config #cli-use