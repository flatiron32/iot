all: 
				g++ testsuite.cpp -o testsuite.o

check:
				./cpplint.py *.cpp

test: all
				./testsuite.o

clean:
				-rm *.o
