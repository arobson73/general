CC=g++
INCLUDE=-I../../input_output/get_args
CFLAGS=-c -Wall -std=c++11 $(INCLUDE) 
LDFLAGS=-lglut -lGLU -lGL
SOURCES=test.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=test

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -rf *.o ${EXECUTABLE}	
