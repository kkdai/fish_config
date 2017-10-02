#Fisherman setting
#
set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
#source $fisher_home/config.fish

#Golang setting
#
set -x GOROOT (go env GOROOT)
set -x GOBIN $GOROOT/bin
set -x GOTOOLS $GOROOT/pkg/tool
set -x GOPATH $HOME/src/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin $GOBIN
set -x PATH $PATH "/usr/local/bin" "/usr/local/heroku/bin"


#Setting for cocoapods
#
set -x PATH $PATH $HOME/Software/ruby/bin 
set -x GEM_HOME $HOME/Software/ruby
set -x LIBRARY_PATH /usr/local/lib

#Other setting
#
set -x KKDAI $GOPATH/src/github.com/kkdai
set -x LINKERGO $GOPATH/src/bitbucket.org/linkernetworks
set -x LINKERP $HOME/Documents/Source_Code/Projects/linker
set -x ANDROID_NDK_HOME /Users/Evan/Library/Android/sdk/ndk-bundle
set -x PATH $PATH $ANDROID_NDK_HOME
set -x PATH $PATH $HOME/Documents/istio-0.1.5/bin


#Alias 
#
function god 
	go build -gcflags '-N -l'
end 

function kc
	kubectl $argv 
end

function vi
	vim $argv
end

function  godrun
	go build -gcflags '-N -l' -o debug; and gdb debug 
end 

function sourcetree
	open -a SourceTree ./
end

# The next line updates PATH for the Google Cloud SDK.
bass source '/Users/Evan/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '/Users/Evan/google-cloud-sdk/completion.bash.inc'

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
