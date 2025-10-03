CXX = g++
CXXFLAGS = -std=c++17 -g -O0 -Wall -Wextra
TARGET = solution
SRCS = solution.cpp
OBJS = $(SRCS:.cpp=.o)

.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)

test: all
	pytest test_game.py
