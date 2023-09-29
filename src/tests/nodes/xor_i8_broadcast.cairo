mod input_0; 
mod input_1; 
mod output_0; 


use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::TensorTrait;
use orion::operators::tensor::I8Tensor;
use orion::operators::tensor::U32TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_xor_i8_broadcast() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z = output_0::output_0();

    let y = input_0.xor(@input_1);

    assert_eq(y, z);
}