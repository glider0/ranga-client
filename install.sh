#!/bin/sh

APT="apt"
DPKG="dpkg"
SORTV="sort -V"
INSTALL_BIN="install -m0755"

case `uname -s` in
"Linux")
	;;
"FreeBSD")
	SORTV="gsort -V"
	;;
"Darwin")
	SORTV="gsort -V"
	;;
esac

errquit() {
	echo "$*" >&2
	exit 1
}

verlte() {
    [  "$1" = `echo -e "$1\n$2" | ${SORTV} | head -n1` ]
}

verlt() {
    [ "$1" = "$2" ] && return 1 || verlte $1 $2
}

__check_command() {
	[ -n `which $1` ]
}

check_command() {
	if ! __check_command "$@"; then
		echo "You need install package $2 first" >&2
		if [ -f /etc/debian_version ]; then
			sudo ${APT} update
			sudo ${APT} install "$2"
			if ! __check_command "$@"; then
				echo 'Install package failed.'
				exit 1
			fi
		else
			echo 'Unsupported system, please install it yourself'
			exit 1
		fi
	fi
}

check_command bash bash
verlt `bash -c 'echo $BASH_VERSION'` 4.3 && errquit "The version of bash must be at least 4.3"
check_command curl curl

[ "$1" = '--user' ] && TARGET_DIR="${HOME}/.local/bin"
${INSTALL_BIN} ./ranga-cli ${TARGET_DIR:-/usr/local/bin}
${INSTALL_BIN} ./bash-completion/ranga-cli-completion.bash /usr/share/bash-completion/completions/ranga-cli
