CC = gcc
override CFLAGS += -c -Wall -O3 -pthread
LDFLAGS = 
LIBS = -lpthread
SVR_SOURCES = tcpServer.c
CLT_SOURCES = tcpClient.c
DELE = .depend
SVR_OBJ = $(SVR_SOURCES:.c=.o)
CLT_OBJ = $(CLT_SOURCES:.c=.o)
SVR_EXE = server
CLT_EXE = client

all: $(SVR_OBJECTS) $(CLT_OBJECTS) $(SVR_EXE) $(CLT_EXE)

$(SVR_EXE): $(SVR_SOURCES)
	$(CC) $(LDFLAGS) $(SVR_SOURCES) -o $@ $(LIBS)

$(CLT_EXE): $(CLT_SOURCES)
	$(CC) $(LDFLAGS) $(CLT_SOURCES) -o $@ $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

dep:
	$(CC) -M *.c > .depend

clean:
	rm -f $(SVR_OBJ) $(CLT_OBJ) $(SVR_EXE) $(CLT_EXE) $(DELE)

DEBUG:
	@echo "Debugger mode, type this to compile your code:"
	@echo 'make clean CFLAGS+="-D __DEBUG__" all'

help:
	@echo "This is makefile command information:"
	@echo "==============================================="
	@echo "all = compile all the file."
	@echo "DEBUG = show the details of debugger mode."
	@echo "clean = remove executable and object file."
	@echo "dep = output the compiling detail to .depend file."
	@echo "==============================================="
	@echo 'Just use "make (FLAG)" then pass argument to make command.'
	@echo ""
