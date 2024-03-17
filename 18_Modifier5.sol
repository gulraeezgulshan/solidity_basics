// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Modifier for Function Reuse
contract Voting {
    mapping(address => bool) public hasVoted;

    // Modifier to check if the sender has already voted
    modifier notYetVoted() {
        require(!hasVoted[msg.sender], "Already voted");
        _;
    }

    function voteYes() public notYetVoted {
        hasVoted[msg.sender] = true;
    }

    function voteNo() public notYetVoted {
        hasVoted[msg.sender] = true;
    }
}
