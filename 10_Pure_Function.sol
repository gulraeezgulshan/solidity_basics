// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DemoPure {
    // State variable to store a number
    uint256 public number1;
    uint256 public number2;

    function setNumber(uint256 _number1, uint256 _number2) public {
        number1 = _number1;
        number2 = _number2;
    }

    function getNumbers1() public view returns (uint256, uint256) {
        return (number1, number2);
    }

    // //Pure neither read or write state variables
    // function getNumbers2() public pure returns (uint256, uint256) {
    //     return (number1, number2);
    // }

    // Can only return local variables not state variables
    function getNumbers3() public pure returns (uint256, uint256) {
        uint256 a = 1;
        uint256 b = 2;
        return (a, b);
    }
}
