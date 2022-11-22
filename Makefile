#linux target runs the 'linux.sh' script with the prerequisite 'clean'
linux: clean
	#runs the 'linux.sh' script
	./bin/linux.sh

#clean target that runs the 'cleanup.sh' script
clean:
	#runs the 'cleanup.sh' script
	./bin/cleanup.sh
