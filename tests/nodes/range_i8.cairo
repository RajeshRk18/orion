mod output_0;


use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{I8Tensor, I8TensorAdd};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::I8TensorPartialEq;
use orion::utils::{assert_eq, assert_seq_eq};
use orion::numbers::NumberTrait;

#[test]
#[available_gas(2000000000)]
fn test_range_i8() {
    let z_0 = output_0::output_0();

    let y_0 = TensorTrait::range(-1,25,3);

    assert_eq(y_0, z_0);
}
