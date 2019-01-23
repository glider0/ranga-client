#!/usr/bin/env bash
_ranga_cli() {
	local cur prev words cword
	_init_completion || return

	if [[ "${words[1]}" = "swdeploy" ]]; then
		case "$prev" in
		flash)
			_filedir
			;;
		-*|swdeploy)
			COMPREPLY=( $(compgen -W '-a -r --max-poll-time --auth-standalone component sync flash status log' -- "$cur") )
			;;
		esac
		return
	fi

	if [[ "$cword" -eq 1 || "$prev" == --* ]]; then
		COMPREPLY=( $(compgen -W '--debug config action query auth addon swdeploy' -- "$cur") )
		return
	fi

	if [[ "$cword" -eq 2 ]]; then
		case "${words[1]}" in
		config|action|query)
			export RANGA_CLIENT_HTTP_TIMEOUT=4
			COMPREPLY=( $(compgen -W "$(ranga-cli _disp "${words[1]}")" -- "$cur") )
			;;
		auth)
			COMPREPLY=( $(compgen -W '-p -e --password-text -q' -- "$cur") )
			;;
		addon)
			COMPREPLY=( $(compgen -W 'install-extension remove-extension list-extensions print-info update-cache set-webcon invoke list-components undeploy-component' -- "$cur") )
			;;
		esac
		return
	fi

	_filedir
}

complete -F _ranga_cli ranga-cli
