function gcrlogin
	bass 'docker login -u oauth2accesstoken -p "$(gcloud auth application-default print-access-token)" https://asia.gcr.io'
end
~
