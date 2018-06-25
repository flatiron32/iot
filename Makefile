headers = $(shell find . -name *.hpp)
sources = $(shell find . -name *.ino)
objects = testsuite.o serial.o $(sources:%.ino=%.o)

.PHONY: clean check test lint

check: clean lint test

test: bin/testit
	./bin/testit

lint:
	./cpplint.py \
		--extensions=ino,cpp \
		--headers=hpp \
		*.cpp ${sources} ${headers}

clean:
	-rm {,**/}*.o
	-rm -rf bin

%.o: %.ino
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -x c++ -c -o $@ $<

bin:
	mkdir bin

bin/testit: bin ${objects}
	g++ -o bin/testit ${objects}
