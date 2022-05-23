CXX = g++
CXXFLAGS = -Wall -g

#INCLUDES = C:/boost/include/boost-1_77

#LIBS = C:/boost/lib

sources = test.cpp
objects = $(sources:.cpp=.o)

main.exe : $(objects)
	$(CXX) $(objects) -o test.exe

$(objects) : %.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY : clean
clean :
	-del *.o test.exe
