// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Library {

    struct Book {
        string title;
        string author;
        uint256 id;
        bool isAvailable;
    }

    mapping(uint256 => Book) public books;

    uint256 public lastBookId;

    event BookAdded(uint256 bookId, string title, string author);

    function addBook(string memory _title, string memory _author) public {
        lastBookId += 1; 
        books[lastBookId] = Book(_title, _author, lastBookId, true); 
        emit BookAdded(lastBookId, _title, _author); 
    }


    function borrowBook(uint256 _bookId) public returns (bool) {
        if(books[_bookId].isAvailable) {
            books[_bookId].isAvailable = false; 
            return true; 
        }
        return false;
    }

    function returnBook(uint256 _bookId) public {
        require(!books[_bookId].isAvailable, "This book is not borrowed."); 
        books[_bookId].isAvailable = true;
    }
}
