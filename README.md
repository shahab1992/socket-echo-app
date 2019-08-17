# socket-echo-app
This program provides a simple education of event programming in C and its useful either blocking and non blocking

How to build:
First simply run the inst-script.sh script 
Then by running: make all

Usage:
To use the program you can simply run the following command in two different terminals:

1) ./bin/tcp(unix)-echo-server 8080 | /bin/tcp(unix)-non-blocking-echo-server 8080
2) nc localhost 8080

After piping some data to nc terminal you can the echo response and enjoy! 
