use std::ffi::CString;
use std::os::raw::*;
extern "C"{
    fn call_this(lang_name:*const c_char);
}
fn main(){
    unsafe{
        let lang_name = CString::new("Rust").unwrap();
        call_this( lang_name.as_ptr());
    }
}