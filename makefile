all: 
				g++ helloworld.cpp -o helloworld

test:
				./helloworld

clean:
				@-rm *.o
