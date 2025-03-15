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

function set-title
    printf '\033]2;%s\007' $argv[1]
end

