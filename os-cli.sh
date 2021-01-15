#!/bin/bash


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "This is a linux OS"
	echo "************************************************************************"
	echo "Checking for WGET package"
	if ! which wget > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo apt-get install -y wget
	   echo "wget has been installed"
	else
	   echo "Wget is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for CURL package"
	if ! which curl > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo apt-get install -y curl
	   echo "Curl has been installed"
	else
	   echo "curl is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for Node.js package"
	if ! which node > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo apt-get install -y nodejs
	   echo "Node.js has been installed"
	else
	   echo "Node.js is already installed"
	fi

elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "This is a darwin OS"
	echo "************************************************************************"
	echo "Checking for WGET package"
	if ! which wget > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo brew install -y wget
	   echo "wget has been installed"
	else
	   echo "Wget is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for CURL package"
	if ! which curl > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo brew install -y curl
	   echo "Curl has been installed"
	else
	   echo "curl is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for Node.js package"
	if ! which node > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo brew install -y node
	   echo "Node.js has been installed"
	else
	   echo "Node.js is already installed"
	fi

elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo "This is a freebsd OS"
	echo "************************************************************************"
	echo "Checking for WGET package"
	if ! which wget > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo pkg install -y wget
	   sudo rehash
	   echo "wget has been installed"
	else
	   echo "Wget is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for CURL package"
	if ! which curl > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo pkg install -y curl
	   sudo rehash
	   echo "Curl has been installed"
	else
	   echo "curl is already installed"
	fi

	echo "************************************************************************"
	echo "Checking for Node.js package"
	if ! which node > /dev/null; then
  	   echo "Package not found! Installing"
     	   sudo pkg install -y node12
	   sudo rehash
	   echo "Node.js has been installed"
           
	else
	   echo "Node.js is already installed"
	fi

else
        echo "Installation for your OS is not available"
fi

#elif [[ "$OSTYPE" == "cygwin" ]]; then
#        echo "This is a cygwin OS"

#elif [[ "$OSTYPE" == "msys" ]]; then
#        echo "This is a msys OS"
#elif [[ "$OSTYPE" == "win32" ]]; then
#        echo "This is a win32 OS"
