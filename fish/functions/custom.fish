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

function standup 
    google-chrome-stable 'https://meet.google.com/ojr-pqan-dfc?pli=1&authuser=1' 2>&1 &
    disown
end

function workday
    google-chrome-stable 'https://mail.google.com/mail/u/1/#inbox' 2>&1 &
    google-chrome-stable 'https://atomicjolt.harvestapp.com/time' 2>&1 &
    google-chrome-stable 'https://atomicjolt.instructure.com' 2>&1 &
    google-chrome-stable 'https://gitlab.com/atomicjolt' 2>&1 &
    disown
end

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

function zth
    zathura $argv &
    disown
end


function pcsv
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$argv" | column -t -s, | less  -F -S -X -K
end


# Set the current kubernetes context
function kx 
   if count $argv > /dev/null
      kubectl config use-context $argv[1]
   else 	
      kubectl config current-context 
   end
end

# Set the current kubernetes namespaces
function kn
   if count $argv > /dev/null
      kubectl config set-context --current --namespace $argv[1]
   else 	
      kubectl config view --minify | grep namespace | cut -d" " -f6
   end
end


