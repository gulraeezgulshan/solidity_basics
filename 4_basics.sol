// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyContract {
    uint256 public counter = 0;

    function increment() public {
        counter += 1;
    }

    function decrement() public {
        counter -= 1;
    }

    function viewCounter () public view returns (uint){
        return counter;
    }
}
