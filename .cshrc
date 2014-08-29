# ~/.cshrc
# from https://bitbucket.org/yuja/dotfiles/src/180a96566d12/dot.cshrc

if (! $?prompt || ! $?tcsh ) exit

set color

if ( -d ~/.cshrc.d ) then
    foreach name (`find ~/.cshrc.d/*`)
        source "$name"
    end
endif

if ($term == "xterm" || $term == "vt100" \
    || $term == "vt102" || $term !~ "con*") then
        # bind keypad keys for console, vt100, vt102, xterm
        bindkey "\e[1~" beginning-of-line  # Home
        bindkey "\e[7~" beginning-of-line  # Home rxvt
        bindkey "\e[2~" overwrite-mode     # Ins
        bindkey "\e[3~" delete-char        # Delete
        bindkey "\e[4~" end-of-line        # End
        bindkey "\e[8~" end-of-line        # End rxvt
endif
