all: 
				g++ testsuite.cpp -o testsuite.o

test:
				./testsuite.o

clean:
				@-rm *.o
