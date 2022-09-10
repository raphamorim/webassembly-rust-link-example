#![deny(warnings)]
// #![crate_type = "rlib"]

#[link(wasm_import_module = "./dep")]
extern {
    pub fn dep();
}
