CXX=g++
OBJ=loader_demo

.PHONY: all clean

all: $(OBJ)

loader.o: ./include/loader.cpp
	$(CXX) -std=c++11 -c ./include/loader.cpp

loader_demo: loader.o loader_demo.cpp
	$(CXX) -std=c++11 -o loader_demo loader_demo.cpp loader.o -lbfd
	rm *.o

clean:
	rm -f $(OBJ) *.o

# EOF
