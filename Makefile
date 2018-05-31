objects = testsuite.o empty.o

test: ${objects}
				g++ -o testit ${objects}
				./testit

check:
				./cpplint.py *.cpp

clean:
				-rm *.o
				-rm testit
