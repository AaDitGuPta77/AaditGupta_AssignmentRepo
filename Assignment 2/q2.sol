// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract q2 {
    int256 storedNumber;

    function setNumber(int256 _number) public {
        storedNumber = _number;
    }

    function getNumber() public view returns (int256) {
        return storedNumber;
    }
}