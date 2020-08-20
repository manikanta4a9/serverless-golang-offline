.PHONY: build clean deploy

build:
	env GOOS=linux go build -ldflags="-s -w" -o bin/hello src/hello/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/world src/world/main.go

clean:
	rm -rf ./bin

deploy: clean build
	sls deploy --verbose
