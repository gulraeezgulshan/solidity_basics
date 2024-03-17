// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TicketSale {
    uint256 public constant TICKET_PRICE = 0.1 ether;
    uint256 public ticketsAvailable = 100;

    function buyTicket(uint256 numberOfTickets) public payable {
        require(msg.value >= (TICKET_PRICE * numberOfTickets), "Insufficient payment");
        require(ticketsAvailable >= numberOfTickets, "Not enough tickets available");

        ticketsAvailable -= numberOfTickets;
    }
}