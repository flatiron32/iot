all: 
				g++ testsuite.cpp -o testsuite.o

check:
				./cpplint.py *.cpp

test: testsuite.o
				./testsuite.o

clean:
				-rm *.o
