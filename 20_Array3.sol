// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayRemove {
    uint[] public numbers;

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function removeNumber(uint _index) public {
        require(_index < numbers.length, "Index out of bounds");
        numbers[_index] = numbers[numbers.length - 1];
        numbers.pop();
    }
}
