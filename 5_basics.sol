// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyContract {
    //different datatypes

    bool isActive = true;

    //Unsigned integers
    uint8 age = 18;
    uint256 balance = 1000000;

    //Signed integers
    int256 temperature = -10;
    int64 score = 1200;

    //Range
    int8 public minInt8 = type(int8).min;
    int8 public maxInt8 = type(int8).max;

    int16 public minInt16 = type(int16).min;
    int16 public maxInt16 = type(int16).max;

    uint256 public minInt256 = type(uint256).min;
    uint256 public maxInt256 = type(uint256).max;

    //Address
    address walletAddress = 0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99;

    //Byte Data

    //Fixed-size
    bytes1 a = 0xb5; // Single hexadecimal byte
    bytes2 b = 0x1234; // Two hexadecimal bytes
    bytes3 c = 0xffffff; // Three hexadecimal bytes

    //Dynamic
    bytes data = "Hello World";

    //Arrays

    //Fixed-size array:
    uint[5] fixedArray = [1,2,3,4,5];

    //Dynamic-size array:
    uint[] dynamicArray = [1,2,3,4,5,6];

    //Mappings
    mapping(address => uint) public balances;

    //Structs
    struct Person {
        uint age;
        string name;
    }
    
    Person public bob = Person({age: 24, name: "Bob"});

    //Enums
    enum State { Waiting, Ready, Active }
    
    State public state = State.Ready;












    string data_c = "Hello, World!";




}
