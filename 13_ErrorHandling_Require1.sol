// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Auction {
    bool public isAuctionActive;
    address public highestBidder;
    uint public highestBid;

    constructor() {
        isAuctionActive = true;
    }

    function bid() public payable {
        require(isAuctionActive, "Auction is not active.");
        require(msg.value > highestBid, "Bid is not high enough.");
        
        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}