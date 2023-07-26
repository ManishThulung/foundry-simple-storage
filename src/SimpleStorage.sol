// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 private s_favouriteNumber;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint) public nameOfFavourite;

    function store(uint256 _favouriteNumber) public {
        s_favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return s_favouriteNumber;
    }

    function addFive() public view returns (uint256) {
        uint256 newNumber = s_favouriteNumber + 5;
        return newNumber;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        listOfPeople.push(Person(_favNum, _name));
        nameOfFavourite[_name] = _favNum;
    }
}
