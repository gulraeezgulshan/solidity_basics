// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // Dynamic array of integers
    uint[] public numbers;

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function getNumber(uint _index) public view returns (uint) {
        return numbers[_index];
    }

    function getNumbersCount() public view returns (uint) {
        return numbers.length;
    }
}
