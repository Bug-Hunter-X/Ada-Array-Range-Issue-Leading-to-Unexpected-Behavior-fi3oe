# Ada Array Range Issue

This example demonstrates a potential issue when iterating over Ada arrays using the `'Range` attribute. The code initializes an array and then iterates over it using `My_Arr'Range`.  However, if the size of `My_Arr` is changed later in the code, the loop might not iterate over the correct range, leading to unexpected results or errors.

## Problem

The core problem stems from the reliance on `'Range` which is evaluated at compile time.  If the array size is modified dynamically (though this isn't directly possible with a static array like this), the loop may not cover all array elements.

## Solution

The solution involves using a loop counter that explicitly covers the desired range, avoiding reliance on `'Range`. This makes the code more robust and less prone to unexpected behavior when the array size changes or when dealing with array slices.

## How to Reproduce

1. Compile the code in `bug.ada`.
2. Run the compiled code. It should produce the expected output.
3. Modify `My_Arr`'s size/range in the `bug.ada` file.
4. Recompile and run. Note any discrepancies compared to the output of the corrected version in `bugSolution.ada`.
