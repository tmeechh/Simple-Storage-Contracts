//EVM, Ethereum Virtual Machine
// Ethereum , Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract SimpleStorage {
    // favNumber gets initialized to 0 if no value is given
    uint256 myFavNumber;

    // uint256[] listOfFavNumbers;

    struct Person {
        uint256 favNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favNumber) public virtual {
        myFavNumber = _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavNumber;
    }

    // calldata, memory, storage..
    //memory is a temporary variable that can be modified..
    // calldata temporary also but cant be modified...
    // storage is  permanant and can be modified
    function adddPerson(string memory _name, uint256 _favNumber) public {
        listOfPeople.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}
