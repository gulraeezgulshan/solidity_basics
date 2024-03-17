// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//Modifier used as a Validation

contract TicketSale {
    uint256 public constant TICKET_PRICE = 1 ether;
    uint256 public ticketsAvailable = 100;

    // Modifier to check if enough Ether is sent
    modifier sufficientPayment(uint256 numberOfTickets) {
        require(msg.value >= numberOfTickets * TICKET_PRICE, "Not enough Ether provided");
        _;
    }

    // Modifier to check if tickets are available
    modifier ticketsExist(uint256 numberOfTickets) {
        require(ticketsAvailable >= numberOfTickets, "Not enough tickets");
        _;
    }

    function buyTickets(uint256 numberOfTickets) public payable sufficientPayment(numberOfTickets) ticketsExist(numberOfTickets) {
        ticketsAvailable -= numberOfTickets;
    }
}
