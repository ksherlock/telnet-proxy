LINK.o = $(LINK.cc)

CXXFLAGS += -std=c++11

telnet: telnet.o

.PHONY: clean
clean:
	$(RM) telnet.cpp telnet.o

%.cpp : %.ragel
	ragel -G1 -o $@ $<