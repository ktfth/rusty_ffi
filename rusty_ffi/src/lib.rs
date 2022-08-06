// use std::ffi::CString;
// use std::os::raw::c_char;

#[no_mangle]
pub extern fn hello_world() -> *const u8 {
    "Hello World!\0".as_ptr()
}