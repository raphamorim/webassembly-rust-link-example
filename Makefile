all:
	rustc foo.rs --target wasm32-unknown-unknown --crate-type=rlib
	rustc bar.rs -C lto -O --target wasm32-unknown-unknown --crate-type=cdylib
	node foo.js ./bar.wasm
