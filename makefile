CC=gcc
VERSION=1.1.4

static: rply.c rply.h rplyfile.h
	@$(CC) -Wall -c -o rply.o rply.c
	@ar rcs rply.a rply.o
	
shared: rply.c rply.h rplyfile.h
	@$(CC) -fPIC -Wall -c -o rply.o rply.c

clean:
	-@rm *.o *.a *.so 2> /dev/null || true
