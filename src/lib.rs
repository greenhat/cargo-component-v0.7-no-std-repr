#![no_std]

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[panic_handler]
fn my_panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

mod bindings;

use bindings::Guest;

struct Component;

impl Guest for Component {
    /// Say hello!
    fn hello_world() -> u32 {
        0
    }
}
