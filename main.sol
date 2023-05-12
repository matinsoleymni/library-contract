// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.2 < 0.9.0;

contract library24{

    uint __id = 0;

    struct book 
    {
        uint256 id;
        string name;
        string info;
        string writer;
        address gift;
        uint8 slice;
    }
    
    book booknam ;

    book[] Book;

    function addBook(string memory _name , string memory _info , string memory _writer)public{
        __id++;
        booknam.id = __id;
        booknam.name = _name;
        booknam.info = _info;
        booknam.writer = _writer;
        booknam.gift = msg.sender;
        booknam.slice = 0;
        Book.push(booknam);
    }

    function lastSet() public view returns(book memory) {
        return booknam;
    }

    function bookBumber()public view returns(uint){
        return __id;
    }

    function Books() public view returns(book[] memory){
        return Book;
    } 
}
