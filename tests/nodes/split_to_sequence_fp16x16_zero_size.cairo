mod input_0;
mod output_0;

use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP16x16Tensor, FP16x16TensorAdd};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::FP16x16TensorPartialEq;

#[test]
#[available_gas(2000000000)]
fn test_split_to_sequence_fp16x16_zero_size() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0
        .split_to_sequence(
            0,
            1,
            Option::Some(
                TensorTrait::<u32>::new(shape: array![3].span(), data: array![0, 0, 0].span(),)
            )
        );

    assert_seq_eq(y, z);
}
