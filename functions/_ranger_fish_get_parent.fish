function _ranger_fish_get_parent
  set parent_proc (ps -o comm= (ps -o ppid= -p $fish_pid | xargs))

  set -l parent
  if test $parent_proc = ranger
    set parent (set_color blue)'r '(set_color normal)
  end

  echo -n -s $parent
end

