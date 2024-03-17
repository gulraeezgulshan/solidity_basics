// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Modifier for Post-conditions
contract Counter {
    uint public count = 0;

    // Modifier to ensure the count is always greater than zero after an operation
    modifier incrementPostCondition() {
        _;
        assert(count > 0); // This checks the condition after the function body has executed
    }

    function increment() public incrementPostCondition {
        count += 1;
    }
}

