use core::option::OptionTrait;
use core::array::ArrayTrait;
use core::array::SpanTrait;
use core::debug::PrintTrait;

use orion::numbers::NumberTrait;
use orion::operators::tensor::core::{Tensor, TensorTrait, ravel_index, unravel_index};
use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::tensor::math::{exp::exp_upcast, arithmetic::div_downcast};

/// Cf: TensorTrait::reduce_log_sum_exp docstring
// fn reduce_log_sum_exp_wide<
//     T,
//     TMAG,
//     W,
//     WMAG,
//     impl TIntoW: Into<T, W>,
//     impl WTryIntoT: TryInto<W, T>,
//     impl WCopy: Copy<W>,
//     impl WDrop: Drop<W>,
//     impl TCopy: Copy<T>,
//     impl TDrop: Drop<T>,
//     impl TDiv: Div<T>,
//     impl TTensor: TensorTrait<T>,
//     impl WTensor: TensorTrait<W>,
//     impl TFixed: FixedTrait<T, TMAG>,
//     impl WFixed: FixedTrait<W, WMAG>
// >(
//     self: @Tensor<T>, axis: usize, keepdims: bool
// ) -> Tensor<W> {
//     let tensor_exp: Tensor<W> = exp_upcast(*self);
//     let tensor_exp_log_sum = tensor_exp.reduce_log_sum(axis, keepdims);

//     return tensor_exp_log_sum;
// }

fn reduce_log_sum_exp<
    T,
    MAG,
    impl Tensor: TensorTrait<T>,
    impl TNumber: NumberTrait<T, MAG>,
    impl TMul: Mul<T>,
    impl TAddEq: AddEq<T>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>,
>(
    self: @Tensor<T>, axis: usize, keepdims: bool
) -> Tensor<T> {
    let tensor_exp = self.exp();
    let tensor_exp_log_sum = tensor_exp.reduce_log_sum(axis: axis, keepdims: keepdims);
    return tensor_exp_log_sum;
}
