set current_tty
if status --is-login
    and  test (tty) = "/dev/tty1" 
#    set -gx _JAVA_AWT_WM_NONREPARENTING 1
#    set -gx MOZ_ENABLE_WAYLAND 1
    sway
end
