headers = $(shell find . -name *.hpp)
sources = $(shell find projects -name *.ino)
objects = testsuite.o serial.o $(sources:%.ino=%.o)
tests = $(sources:projects/%.ino=tests/%Test)

.PHONY: clean check test lint

check: clean lint test

test: tests
	for test in ${tests}; do \
		$$test; \
	done

lint:
	./cpplint.py \
		--extensions=ino,cpp \
		--headers=hpp \
		*.cpp ${sources} ${headers}

clean:
	-rm $(shell find . -name *.o)
	-rm $(tests)

%.o: %.ino
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -x c++ -c -o $@ $<

tests/%.o: tests/%.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -x c++ -c -o $@ $<

tests/%Test: tests/%Test.o projects/%.o serial.o 
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $^

tests: ${tests}

