function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error for large inputs due to the recursive calls to foo().  The recursive depth grows linearly with the input x.  Hack's recursion depth is limited, causing the stack overflow.