// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DemoView {
    // State variable to store a number
    uint public number1;
    uint public number2;

    // Function to set the value of 'storedNumber'
    // This function can modify the state of the blockchain
    function setNumber(uint _number1, uint _number2) public {
        number1 = _number1;
        number2 = _number2;
    }

    // 'view' function to return the value of 'number1, number2'
    // This function does not modify the state, hence marked as 'view'
    function getNumbers() public view returns (uint,uint) {
        return (number1, number2);
    }
}