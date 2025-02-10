if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/opt/homebrew/bin/brew shellenv)"
    
    zoxide init fish | source
    
    fish_config theme choose "fish default"
end
