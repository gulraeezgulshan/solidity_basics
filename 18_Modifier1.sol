// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//Modifier for Access Control

contract Owned {
    address public owner;

    constructor() {
        owner = msg.sender; 
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _; 
    }

    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}