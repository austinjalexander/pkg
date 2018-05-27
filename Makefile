GO_FILES          := ./...
export

.PHONY: lint test

lint:
	gometalinter --config=.gometalinter.json --deadline=2m --exclude=rpc --exclude=vendor $(GO_FILES)

test:
	go test -v $(GO_FILES)
