Smart Handling

This Solidity program is a simple contract that showcases the usage of assert() and require() statements in Solidity. The contract performs calculations on input values and demonstrates how these statements can be used for error handling and condition validation.

Description

The Calculation contract allows users to perform calculations by calling the calculate() and calculateWithRevert() functions. These functions perform division, subtraction, and utilize assert() and require() statements for error handling and condition validation.



Executing Program

To run this program, you can follow the steps below:

Open the Remix Ethereum IDE website at Remix Ethereum IDE.
Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ABC.sol).
Copy and paste the provided code into the file:

// SPDX-License-Identifier:MIT
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

Click on the "ABC.sol" button to compile the code.
After successful compilation, navigate to the "Deploy & Run Transactions" tab.
Select the "Calculation" contract from the dropdown menu.
Click on the "Deploy" button to deploy the contract.
Once the contract is deployed, you can interact with it by calling the following functions:
calculate(uint256 x, uint256 y, uint _num): Perform calculations on x and y values. The function utilizes assert() statements to validate conditions.
calculateWithRevert(uint256 x, uint256 y, uint _num): Perform calculations on x and y values. The function utilizes require() statements to validate conditions.
You can test the contract by providing input values and observing the results of the calculations. 


#Authors

Shashank Shekhar

License

This project is licensed under the MIT License - see the LICENSE.txt file for details.
