### Minimal case for reproducing cargo-component v0.7 (rust 1.75) breakage of `#![no_std]` in components.

1. After generating the project with `cargo component new --lib test-lib` when adding `#![no_std]` to `lib.rs`, the `cargo-component` build fails with:

```text
❯ cargo component build --release
   Compiling test-lib v0.1.0 (/Users/dzadorozhnyi/src/cargo-component-v0.7-no-std-repr)
error: no global memory allocator found but one is required; link to std or add `#[global_allocator]` to a static item that implements the GlobalAlloc trait

error: `#[panic_handler]` function required, but not found

error: could not compile `test-lib` (lib) due to 2 previous errors
```

2. When adding a global allocator and panic handler, the build fails with:

```text
❯ cargo component build --release
  Generating bindings for test-lib (/Users/dzadorozhnyi/src/cargo-component-v0.7-no-std-repr/src/bindings.rs)
   Compiling wee_alloc v0.4.5
   Compiling cfg-if v0.1.10
   Compiling memory_units v0.4.0
   Compiling test-lib v0.1.0 (/Users/dzadorozhnyi/src/cargo-component-v0.7-no-std-repr)
    Finished release [optimized] target(s) in 1.31s
    Creating component /Users/dzadorozhnyi/src/cargo-component-v0.7-no-std-repr/target/wasm32-wasi/release/test_lib.wasm
error: module requires an import interface named `env`
```

Which happens because `memcpy` is expected to be imported from `env` while before it was compiled to Wasm `memory.copy` instruction.
See [debug.wat](debug.wat) (generated with `wasm-tools print target/wasm32-wasi/release/test_lib.wasm > debug.wat`) for the wat of the generated Wasm module. The import is `(import "env" "memcpy" (func $memcpy (;0;) (type 1)))`