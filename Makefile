all: bin/unix-echo-server bin/tcp-echo-server bin/tcp-non-blocking-echo-server bin/unix-non-blocking-echo-server

install: bin/unix-echo-server bin/tcp-echo-server
	cp bin/unix-echo-server /bin/
	cp bin/tcp-echo-server /bin/

bin/unix-echo-server: unix-echo-server.c
	gcc unix-echo-server.c -o bin/unix-echo-server

bin/tcp-echo-server: tcp-echo-server.c
	gcc tcp-echo-server.c -o bin/tcp-echo-server

bin/tcp-non-blocking-echo-server: tcp-non-blocking-echo-server.c
	gcc -g tcp-non-blocking-echo-server.c -o bin/tcp-non-blocking-echo-server  -I/usr/include/kqueue -lkqueue

bin/unix-non-blocking-echo-server: unix-non-blocking-echo-server.c
	gcc -g unix-non-blocking-echo-server.c -o bin/unix-non-blocking-echo-server -I/usr/include/kqueue -lkqueue

clean:
	rm bin/*
