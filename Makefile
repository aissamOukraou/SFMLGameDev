CC= g++ -g 
CFLAGS= -Wall
OBJ= obj/main.o 
LINKEDIT= -L/usr/include/SFML
COMP= -I/usr/include/SFML
LIB= SFML
EXEC= bin/Prog 
all:$(EXEC)
$(EXEC): $(OBJ) 
	$(CC) $(OBJ) -o $(EXEC) $(LINKEDIT) 
obj/main.o: src/main.cpp 
	$(CC) $(CFLAGS) src/main.cpp -c -o obj/main.o $(COMP) 

clean: 
	rm obj/*
	
veryclean:
	rm bin/*	


