############################# Makefile ##########################

LIB = lib/
INCLUDE	=	headers/
SOURCES	=	sources/

SRC1    =   Timer.cpp
MAIN  = main.cpp

SRCS	=	$(SRC1) $(MAIN)

INC1	=	$(SRC1:.cpp=.hpp)

OBJS	=	$(addprefix $(LIB),$(SRCS:.cpp=.o))

CXX	=   g++

CPPFLAGS    =	-std=c++11 -I $(INCLUDE)

EXEC = frequency_of_primes

build: $(EXEC)

$(LIB)$(SRC1:.cpp=.o): $(SOURCES)$(SRC1) $(INCLUDE)$(INC1)
	$(CXX) $(CPPFLAGS)	-c $< -o $@
$(LIB)$(MAIN:.cpp=.o): $(MAIN) $(INCLUDE)$(INC1)
	$(CXX) $(CPPFLAGS)	-c $< -o $@
	
$(EXEC): $(OBJS)
	@echo $(OBJS)
	$(CXX) -o $@ $^

	@echo 	"Program built."
	
.PHONY: clean clean_all rebuild

clean:
	@echo "Object files removed!"
	@rm -f $(LIB)*.o
clean_all:
	@echo "Object files and executable removed!"
	@rm -f $(LIB)*.o $(EXEC) *~ $(SOURCES)/*~ $(INCLUDE)/*~
rebuild:
	@make clean_all
	@make
	
run:
	@./$(EXEC)
