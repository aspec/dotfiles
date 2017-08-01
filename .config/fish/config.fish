# Settings
set fish_greeting
set -x EDITOR vim
set -x LC_ALL en_US.UTF-8
set fish_term256 1

# $PATH
test -d /usr/local/bin              ; and set PATH /usr/local/bin           $PATH
test -d /usr/bin            	    ; and set PATH /usr/bin                 $PATH
test -d /usr/games                  ; and set PATH /usr/games               $PATH
test -d /bin              		    ; and set PATH /bin                     $PATH
test -d ~/bin                       ; and set PATH ~/bin                    $PATH
test -d ~/.local/bin            	; and set PATH ~/.local/bin      		$PATH
test -d ~/.npm-global/bin           ; and set PATH ~/.npm-global/bin        $PATH
