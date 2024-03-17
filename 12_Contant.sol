// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    
    // constant variable
    uint public constant MY_CONSTANT = 123;

    // A state variable
    uint public myStateVariable;

    constructor(uint initialValue) {
        myStateVariable = initialValue;
    }

    function getMyConstant() public pure returns (uint) {
        return MY_CONSTANT;
    }

    function setMyStateVariable(uint newValue) public {
        myStateVariable = newValue;
    }
}