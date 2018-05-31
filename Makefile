headers = $(shell find . -name *.h)
sources = $(shell find . -name *.ino)
objects = testsuite.o $(sources:%.ino=%.o)

test: ${objects}
	g++ -o testit ${objects}
	./testit

check:
	./cpplint.py \
		--extensions=ino,cpp \
		--headers=h \
		*.cpp ${sources} ${headers}


%.o: %.ino
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -x c++ -c -o $@ $<

clean:
	-rm *.o
	-rm testit
