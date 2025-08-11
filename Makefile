CC = gcc
CFLAGS = `pkg-config --cflags sdl3`
LIBS = `pkg-config --libs sdl3`
TARGET = main.elf
SRC = main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $@ $(SRC) $(CFLAGS) $(LIBS)

clean:
	rm -f $(TARGET)
