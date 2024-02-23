CC = cc
CFLAGS = -g -Werror
RM = rm -f

default: all

all: calculator

calculator: main.o addition.o subtraction.o multiplication.o division.o
	$(CC) $(CFLAGS) -o calculator.o main.o addition.o subtraction.o multiplication.o division.o
main.o: main.c operations.h
	$(CC) $(CFLAGS) -c main.c -o main.o
addition.o: addition.c operations.h
	$(CC) $(CFLAGS) -c addition.c -o addition.o
subtraction.o: subtraction.c operations.h
	$(CC) $(CFLAGS) -c subtraction.c -o subtraction.o
multiplication.o: multiplication.c operations.h
	$(CC) $(CFLAGS) -c multiplication.c -o multiplication.o
division.o: division.c operations.h
	$(CC) $(CFLAGS) -c division.c -o division.o

clean::
	$(RM) addition.o subtraction.o multiplication.o division.o main.o main calculator.o calculator

.PHONY: all clean
