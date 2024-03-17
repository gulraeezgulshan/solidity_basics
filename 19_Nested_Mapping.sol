// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting {

    mapping(address => mapping(uint256 => bool)) public hasVotedForCandidate;

    function vote(uint256 candidateId) public {
        require(!hasVotedForCandidate[msg.sender][candidateId], "Already voted for this candidate");
        hasVotedForCandidate[msg.sender][candidateId] = true;
    }
}
