subl() {

 if [[ "$(uname -s)" == "Darwin" ]]
    then
       	/Applications/Sublime\ Text/Contents/SharedSupport/bin/subl $1 &
 	else
		/usr/local/bin/Sublime\ Text/sublime_text $1 &
	fi

}
