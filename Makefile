ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

# PHONY means that it doesn't correspond to a file; it always runs the build commands.

.PHONY: build-all
build-all: build-dynamic build-static

.PHONY: run-all
run-all: run-dynamic run-static

.PHONY: build-dynamic
build-dynamic:
	@cd rusty && cargo build --release
	@cp rusty/target/release/librusty.dylib libs/
	go build gostark.go

.PHONY: run-dynamic
run-dynamic: build-dynamic
	@./main_dynamic

# This is just for running the Rust lib tests natively via cargo
.PHONY: test-rust-lib
test-rust-lib:
	@cd lib/hello && cargo test -- --nocapture

.PHONY: clean
clean:
	rm -rf libs/* rusty/target
