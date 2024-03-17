// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AccessControl {
    mapping(address => bool) public isAdmin;

    constructor() {
        isAdmin[msg.sender] = true;
    }

    modifier onlyAdmin() {
        require(isAdmin[msg.sender], "Not an admin");
        _;
    }

    function addAdmin(address user) public onlyAdmin {
        isAdmin[user] = true;
    }

    function removeAdmin(address user) public onlyAdmin {
        isAdmin[user] = false;
    }
}
