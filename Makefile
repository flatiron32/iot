headers = $(shell find . -name *.hpp)
sources = $(shell find . -name *.ino)
objects = testsuite.o serial.o $(sources:%.ino=%.o)
tests = $(sources:%.ino=%Test)

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
	-rm {,**/}*.o

%.o: %.ino
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -x c++ -c -o $@ $<

%Test: %Test.o %.o serial.o
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $^

tests: ${tests}

