def tig-blame -override -docstring 'Open blame in tig for current file and line' %{
    # Note here we aren't passing any command on resume of kakoune
    suspend-and-resume tig blame +%val{cursor_line} %val{buffile} 
}

declare-user-mode tig
map global tig b ': tig-blame<ret>' -docstring 'show blame (with tig)'
map global tig s ': suspend-and-resume tig status<ret>' -docstring 'show git status (with tig)'
map global tig m ': suspend-and-resume tig<ret>' -docstring 'show main view (with tig)'

map global user t ': enter-user-mode tig<ret>' -docstring 'tig commands'

