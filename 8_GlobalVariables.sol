// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariables {

    address public owner;
    uint public creationBlockNumber;
    uint public creationTimestamp;
    bytes32 public creationBlockHash;
    uint public gasLimitAtCreation;
    uint public creationDifficulty;

    constructor() {
        owner = msg.sender;
        creationBlockNumber = block.number;
        creationTimestamp = block.timestamp;
        creationBlockHash = blockhash(block.number - 1); // Get the hash of the previous block
        gasLimitAtCreation = block.gaslimit;
        creationDifficulty = block.prevrandao;
    }

    // A function to retrieve the contract's balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}