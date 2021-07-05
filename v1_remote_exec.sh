#!/bin/bash
L_REMOTE=general@10.237.169.182
M_REMOTE=TODO
W_REMOTE=TODO


# Command execution

# run_command_eof exits on failure
run_command_eof() {
	echo "  ++++++++++++"
	echo "      Running: " "$@"
	if ! $@ ; then
		echo "      Failed !!!"
        exit -1
	fi
    echo "  ------------"
    return 0
}

# run_command return -1 on failure 
run_command() {
	echo "  ++++++++++++"
	echo "      Running: " "$@"
	if ! $@ ; then
		echo "      Failed !!!"
        return -1
	fi
    echo "  ------------"
    return 0
}

l_run_remote_eof() {
    run_command_eof ssh $L_REMOTE $@
}

l_run_remote() {
    run_command ssh $L_REMOTE $@
    return $?
}

# Command execution end



# functions specific to machine

# run_on_linux exucutes all the commands that needs to be run on linux machine
run_on_linux() {
    l_run_remote echo "Running on linux"
    #Add commnds here

}

# run_on_mac exucutes all the commands that needs to be run on mac machine
run_on_mac() {
    echo "TODO"
}

# run_on_windows exucutes all the commands that needs to be run on windows machine
run_on_windows() {
    echo "TODO"
}

run_on_local() {
    run_command ls -la
}

# funtions specific to machine end

run_on_linux
run_on_local

echo $?

