#!/bin/bash

NEXTLINE='\n'
# 3 个空格
SPACE='   '

# \033[36m 天蓝 \033[0m
# \033[32m 绿色 \033[0m
# \033[34m 蓝色 \033[0m
# \033[33m 明黄 \033[0m

function __tldr_git {
	local opt=$1

	case $opt in
		'log')
			printf 'usage: git log [<options>] [<revision-range>] [[--] <path>...]\n'
			printf '   or: git show [<options>] <object>...\n'
			printf $NEXTLINE

			# printf '%s \033[36m--help\033[0m \n' $SPACE
			# printf $NEXTLINE

			printf '%s \033[36mgit lo\033[0m                   \033[32mgit log --oneline --graph\033[0m \n' $SPACE
			printf '        ➢ --oneline          This is a shorthand for "--pretty=oneline --abbrev-commit" used together.\n'
			printf '        ➢ --graph            Draw a text-based graphical representation of the commit history on the left hand side of the output.\n'
			printf $NEXTLINE

			printf '%s \033[36mgit lp\033[0m                   \033[32mgit log --patch\033[0m \n' $SPACE
			printf '        ➢ -p, -u, --patch    Draw a text-based graphical representation of the commit history on the left hand side of the output.\n'
			printf $NEXTLINE

			printf "$SPACE \033[36mgit la\033[0m                   \033[32mgit log --format='%%an <%%ae>'\033[0m This command will output a list of all authors who have made commits\n"
			printf "                                               in your repository, you may use \033[33m| sort -u\033[0m to sort the output alphabetically and\n"
			printf "                                               then removes duplicate lines. This ensures each author appears only once in the list.\n"
			printf '        ➢ %%n                 newline\n'
			printf '        ➢ %%an                author name\n'
			printf '        ➢ %%aN                author email\n'
			printf $NEXTLINE

			printf '\n%s -------------->\n' $SPACE
			printf '%s ➢\033[33m --reverse \033[0m             Output the commits chosen to be shown (see Commit Limiting section above) in reverse order.\n' $SPACE
			printf '%s ➢\033[33m --author \033[0m              Limit the commits output to ones with author/committer header lines that match the specified pattern (regular expression).\n' $SPACE
			;;
	esac
}

# too long, didn't read
function __help_tldr {
	local cmd=$1 opt=$2

	case $cmd in
		'git')
			if [ -z $opt ]; then
				printf $NEXTLINE
				printf '%s ➢\033[33m -log \033[0m         Show commit logs.\n' $SPACE
			else
				__tldr_git $opt
			fi
			;;
		'printf')
			printf 'printf\n'
			;;
	esac
}
