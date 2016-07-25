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

#Other setting
#
set -x KKDAI $GOPATH/src/github.com/kkdai

#Alias 
#
function god 
	go build -gcflags '-N -l'
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
