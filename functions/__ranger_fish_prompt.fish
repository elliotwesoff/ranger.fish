functions -c fish_prompt original_fish_prompt

function fish_prompt
    set parent_proc (ps -o comm= (ps -o ppid= -p $fish_pid | xargs))

    set -l parent
    if test $parent_proc = ranger
      set parent (set_color blue)'r '(set_color normal)
    end

    echo -n -s $parent (original_fish_prompt)
end
