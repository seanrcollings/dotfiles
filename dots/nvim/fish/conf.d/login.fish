set current_tty
if status --is-login
    and  test (tty) = "/dev/tty7" 
     set -gx _JAVA_AWT_WM_NONREPARENTING 1
     set -gx TERMCMD alacritty
#    set -gx MOZ_ENABLE_WAYLAND 1
end
