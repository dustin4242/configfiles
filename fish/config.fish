if status is-interactive
	export EDITOR=nvim
    # Commands to run in interactive sessions can go here
	starship init fish | source
end
