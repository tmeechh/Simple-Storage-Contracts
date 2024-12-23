// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

// Inherintance
contract AddFiveStorage is SimpleStorage {
    // +5
    // overrides
    // virtual override

    function store(uint256 _newNumber) public override {
        myFavNumber = _newNumber + 5;
    }
}
