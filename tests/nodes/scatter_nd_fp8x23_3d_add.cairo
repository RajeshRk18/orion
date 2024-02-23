mod input_0;
mod input_1;
mod input_2;
mod output_0;


use orion::operators::tensor::FP8x23Tensor;
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23TensorPartialEq;
use orion::operators::tensor::U32Tensor;
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::U32TensorPartialEq;

#[test]
#[available_gas(2000000000)]
fn test_scatter_nd_fp8x23_3d_add() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let input_2 = input_2::input_2();
    let z_0 = output_0::output_0();

    let y_0 = input_0
        .scatter_nd(updates: input_1, indices: input_2, reduction: Option::Some('add'));

    assert_eq(y_0, z_0);
}
