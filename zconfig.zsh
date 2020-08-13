ZCONFIG_HOME=${ZCONFIG_HOME:-"$HOME"}
ZCONFIG_UPDATE_COMMAND=${ZCONFIG_UPDATE_COMMAND:-}

function zconfig {
  local cmd="$1"
  shift

  case "$cmd" in
    'cd')
      _zconfig::cd
      ;;
    'edit')
      _zconfig::edit $@
      ;;
    'update')
      _zconfig::update
      _zconfig::reload
      ;;
    'reload')
      _zconfig::reload
      ;;
    *)
      echo "${fg_bold[red]}[zconfig]${reset_color}" "Unknown command '$cmd'" >&2
      echo "${fg_bold[red]}[zconfig]${reset_color}" "Protocol: {cd|edit|update|reload}" >&2
      return 1
      ;;
  esac
}

function _zconfig::cd {
  cd $ZCONFIG_HOME
}

function _zconfig::edit {
  ${1:-$EDITOR} $ZCONFIG_HOME
}

function _zconfig::update {
  if [[ -n $ZCONFIG_UPDATE_COMMAND ]]
  then
    echo "${fg_bold[blue]}[zconfig]${reset_color}" "${fg_bold[green]}update ${fg_bold[black]}($ZCONFIG_HOME)${reset_color}"
    (cd $ZCONFIG_HOME; eval $ZCONFIG_UPDATE_COMMAND)
  else
    >&2 echo "No update command configured, set ZCONFIG_UPDATE_COMMAND"
    return 1
  fi
}

function _zconfig::reload {
  exec $SHELL --login
}
