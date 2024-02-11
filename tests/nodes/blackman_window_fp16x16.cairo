mod output_0;


use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::FP16x16TensorPartialEq;
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::numbers::{FixedTrait, FP16x16};

#[test]
#[available_gas(2000000000)]
fn test_blackman_window_fp16x16() {
    let z_0 = output_0::output_0();

    let y_0 = TensorTrait::blackman_window(FP16x16 { mag: 196608, sign: false }, Option::Some(1));

    assert_eq(y_0, z_0);
}
