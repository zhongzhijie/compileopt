
APP_NAME = compileopt
APP_OBJS = compileopt.o
CC = gcc
INC = ./
CFLAG += -g

.PHONY : all

all : $(APP_NAME) prev_compile post_compile

$(APP_NAME) : $(APP_OBJS)
	$(CC) $(CFLAG) $(APP_OBJS) -o $(APP_NAME)
	
compileopt.o : compileopt.s
	$(CC) -c compileopt.s -o compileopt.o

compileopt.s : compileopt.c
	$(CC) -S compileopt.c -o compileopt.s

prev_compile :
	$(CC) -E compileopt.c -o compileopt.i
	
post_compile :
	objdump -s -d $(APP_NAME) > $(APP_NAME).txt
	
.PHONY : clean

clean :
	rm -f *.o *.s *.i *.txt
	rm -f $(APP_NAME) $(APP_OBJS)