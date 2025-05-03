status is-interactive || exit

function _ranger_install --on-event ranger_install
  functions -c fish_prompt _ranger_fish_prompt_original
  funcsave _ranger_fish_prompt_original

  functions -e fish_prompt
  functions -c _ranger_fish_fish_prompt fish_prompt
  funcsave fish_prompt
end

function _ranger_uninstall --on-event ranger_uninstall
  functions -e fish_prompt
  functions -c _ranger_fish_prompt_original fish_prompt
  functions -e _ranger_fish_prompt_original

  funcsave _ranger_fish_prompt_original
  funcsave fish_prompt
end
