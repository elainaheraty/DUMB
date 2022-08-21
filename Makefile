all: client server

server: DUMBserver.c 
	cc -pthread -std=c99 -c DUMBserver.c
	cc -pthread -std=c99 DUMBserver.o -o DUMBserver
client: DUMBclient
	cc -c -std=c99 DUMBclient.c
	cc -std=c99 DUMBclient.o -o DUMBclient
clean:
	rm *.o DUMBclient DUMBserver
