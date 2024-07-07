pragma solidity ^0.8.0;

contract Calculation { uint256 public result;

function calculate(uint256 x, uint256 y, uint _num) public {
    assert(_num > 0);
    assert(_num != 100);

    assert(y != 0);
    result = x / y;

    assert(x >= y);
    result = result - y;
}

function calculateWithRevert(uint256 x, uint256 y, uint _num) public {
    require(_num > 0, "Number must be greater than 0");
    require(_num != 100, "Number cannot be 100");

    require(y != 0, "Division by zero is not allowed");
    result = x / y;
    
    require(x >= y, "Subtraction would result in underflow");
    result = result - y;
}

function calculateWithRequireAndRevert(uint256 x, uint256 y, uint _num) public {
    require(_num > 0, "Number must be greater than 0");
    require(_num != 100, "Number cannot be 100");

    require(y != 0, "Division by zero is not allowed");
    result = x / y;
    
    if (x < y) {
        revert("Subtraction would result in underflow");
    }
    result = result - y;
}
}
