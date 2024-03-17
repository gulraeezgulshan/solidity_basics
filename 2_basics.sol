// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyContract {

    //state variables
    string public first_name;
    uint256 public age;

    constructor(string memory _first_name, uint256 _age) {
        first_name = _first_name;
        age = _age;
    }
}


