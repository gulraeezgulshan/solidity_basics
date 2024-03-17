// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Survey {
    enum Response { Yes, No, Maybe }

    mapping(address => Response) public votes;

    function vote(Response _response) public {
        votes[msg.sender] = _response;
    }
}
