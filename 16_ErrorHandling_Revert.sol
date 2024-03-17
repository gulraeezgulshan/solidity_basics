// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address public highestBidder;
    uint public highestBid;

    function bid() public payable {
        if (msg.value <= highestBid) {
            revert("Bid amount too low.");
        }

        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}