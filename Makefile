all: bin/unix-echo-server bin/tcp-echo-server bin/simple-non-blocking bin/tcp-non-blocking-echo-server bin/unix-non-blocking-echo-server

bin/unix-echo-server: unix-echo-server.c
	gcc unix-echo-server.c -o bin/unix-echo-server

bin/tcp-echo-server: tcp-echo-server.c
	gcc tcp-echo-server.c -o bin/tcp-echo-server

bin/simple-non-blocking: simple-non-blocking.c
	gcc simple-non-blocking.c -o bin/simple-non-blocking

bin/tcp-non-blocking-echo-server: tcp-non-blocking-echo-server.c
	gcc -g tcp-non-blocking-echo-server.c -o bin/tcp-non-blocking-echo-server  -I/usr/include/kqueue -lkqueue

bin/unix-non-blocking-echo-server: unix-non-blocking-echo-server.c
	gcc -g unix-non-blocking-echo-server.c -o bin/unix-non-blocking-echo-server -I/usr/include/kqueue -lkqueue

clean:
	rm -rf bin/*
