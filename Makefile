.PHONY: all
all: preload

preload: clean
	go build -buildmode=c-shared -o ./bin/preload.so

clean:
	rm -rf ./bin
