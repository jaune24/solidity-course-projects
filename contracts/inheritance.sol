// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

abstract contract ContractBase{ // cannot be deployed
    int public x;
    address public owner;

    constructor() {
        x = 5;
        owner = msg.sender;
    }

    function setX(int _x) public virtual;
}

contract A is ContractBase{
    int public y = 3;

    function setX(int _x) public override{
        x = _x;
    }
}