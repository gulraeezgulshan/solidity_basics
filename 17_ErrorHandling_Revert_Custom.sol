// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Account {
    address public owner;
    uint public balance;

    error UnauthorizedAccess(address caller);
    error InsufficientBalance(uint requested, uint available);


    //any who deploys will be the owner
    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function withdraw(uint amount) public {
        if (msg.sender != owner) {
            revert UnauthorizedAccess(msg.sender);
        }

        if (amount > balance) {
            revert InsufficientBalance(amount, balance);
        }

        balance -= amount;
    }


    function deposit(uint amount) public {
        balance += amount;
    }
}