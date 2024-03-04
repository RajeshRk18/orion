use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::numbers::NumberTrait;

fn input_2() -> Tensor<u32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(1);
    data.append(2);
    data.append(5);
    data.append(6);
    data.append(7);
    TensorTrait::new(shape.span(), data.span())
}
