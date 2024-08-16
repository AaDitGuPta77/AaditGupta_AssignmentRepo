// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract EventLogging {
    event NumberStored(int256 number);
    int256 storedNumber;

    function storeNumber(int256 _number) public {
        storedNumber = _number;
        emit NumberStored(_number);
    }

    function getStoredNumber() public view returns (int256) {
        return storedNumber;
    }
}