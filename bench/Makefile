all: build

.PHONY: build
build:
	GOPATH=`pwd`:`pwd`/vendor go install ./src/cmd/...

.PHONY: race
race:
	GOPATH=`pwd`:`pwd`/vendor go install -race ./src/cmd/...

bin/gen-initial-dataset:
	scp isucon-practice:~isucon/isubata/bench/bin/darwin_amd64/gen-initial-dataset ./bin/

build-osx:
	GOPATH=`pwd`:`pwd`/vendor GOOS=darwin GOARCH=amd64 go install ./src/cmd/...

init-dataset: bin/gen-initial-dataset
	bin/gen-initial-dataset data=`pwd`/data
