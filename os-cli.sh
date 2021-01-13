#!/bin/bash


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "This is a linux OS"
	echo "************************************************************************"
	echo "Checking for WGET package"
	if ! which wget > /dev/null; then
  	   echo "Command not found! Installing"
     	   sudo apt-get install wget
	   echo "wget has been installed"
	else
	   echo "Wget is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for CURL package"
	if ! which curl > /dev/null; then
  	   echo "Command not found! Installing"
     	   sudo apt-get install curl
	   echo "Curl has been installed"
	else
	   echo "curl is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for Node.js package"
	if ! which node > /dev/null; then
  	   echo "Command not found! Installing"
     	   sudo apt-get install nodejs
	   echo "Node.js has been installed"
	else
	   echo "Node.js is already installed"
	fi

elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "This is a darwin OS"
elif [[ "$OSTYPE" == "cygwin" ]]; then
        echo "This is a cygwin OS"
elif [[ "$OSTYPE" == "msys" ]]; then
        echo "This is a msys OS"
elif [[ "$OSTYPE" == "win32" ]]; then
        echo "This is a win32 OS"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "This is a freebsd OS"
else
        echo "Installation for your OS is not available"
fi
