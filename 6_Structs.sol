// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleRegistry {

 
    struct Person {
        string name;
        uint age;
    }


    Person public person;

    function setPerson(string memory _name, uint _age) public {
        person = Person(_name, _age);
    }

    function getPerson() public view returns (string memory, uint) {
        return (person.name, person.age);
    }
}