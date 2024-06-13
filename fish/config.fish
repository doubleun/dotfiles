if status is-interactive
	# Commands to run in interactive sessions can go here
	
	# custom ls using "exa"
	alias ls='lsd -a --color=always --group-directories-first'
	alias ll='lsd -alF --header --color=always --group-directories-first'

	# lazydocker
	alias lz='lazydocker'
end

# pnpm
set -gx PNPM_HOME "/Users/wachirachai/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/skinx/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/skinx/Downloads/google-cloud-sdk/path.fish.inc'; end
