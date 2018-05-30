test: all
				./testsuite.o

all: empty.o 
				g++ testsuite.cpp empty.o -o testsuite.o

check:
				./cpplint.py *.cpp

clean:
				-rm *.o
