test: all
				./testsuite.o

all: 
				g++ testsuite.cpp -o testsuite.o

check:
				./cpplint.py *.cpp

clean:
				-rm *.o
