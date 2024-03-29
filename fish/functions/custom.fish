function cl
    if count $argv > /dev/null
        builtin cd "$argv"; and ll
    else
        builtin cd ~; and ll
    end
end

function mdv 
    lookatme $argv --live --style monokai
end

function notify-me
    if test $status -eq 0
        notify-send "COMMAND completed successfully"
    else
        notify-send -u critical "COMMAND failed"
    end
end

function swap
    if test (count $argv) -eq 2
        set temp random
        mv $argv[1] $temp
        mv $argv[2] $argv[1]
        mv $temp $argv[2]
        
    else
        echo "Usage: swap file1 file2"
        echo "Swaps the two provided files or directories"
    end
end

function csv
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$argv" | column -t -s, | less  -F -S -X -K
end


function setenv; set -gx $argv; end

function set-title
    printf '\033]2;%s\007' $argv[1]
end

function record
    if count $argv > /dev/null
        set name $argv
    else
        set name recording-(date "+%Y-%m-%d-%H-%M-%S")
    end
    wf-recorder -g (slurp) --file=/home/sean/Videos/Captures/$name.mp4
end

