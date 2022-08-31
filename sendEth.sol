// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract sendEther {

    constructor() payable {}

    receive() external payable {}

    function transfer(address payable _to) public payable {
        _to.transfer(123);
    }

    function sender(address payable _to) public payable {
        bool sent = _to.send(123);
        require(sent, "send failed");
    }

    function call(address payable _to) public payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "call failed");
    }

}

contract receiveEther {

    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }

}