// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    //mapping(address => uint256) private balances;
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        
        // This assert is used as a sanity check to ensure that under no circumstance can
        // the balance of the sender be negative after a withdrawal. If this occurs, there's
        // a bug in the contract logic.
        assert(balances[msg.sender] >= 0);

        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Failed to send Ether");
    }
}