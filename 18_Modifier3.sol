// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Modifier to check  State Conditions
contract Auction {
    bool public isAuctionActive;

    // Modifier to check if the auction is active
    modifier auctionActive() {
        require(isAuctionActive, "Auction is not active");
        _;
    }

    function startAuction() public {
        isAuctionActive = true;
    }

    function bid() public auctionActive {
        
    }
}
