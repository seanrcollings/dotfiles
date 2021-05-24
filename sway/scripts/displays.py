#!/usr/bin/env python

import subprocess
import json


def get_outputs():
    return json.loads(
        subprocess.run(["swaymsg", "-t", "get_outputs"], capture_output=True).stdout
    )


outputs = get_outputs()
if len(outputs) == 3:
    # We're docked
    subprocess.run(["swaymsg", "output", "eDP-1", "disable"])
else:
    # We're mobile
    subprocess.run(["swaymsg", "output", "eDP-1", "enable"])
    
