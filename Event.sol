// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Event {

    event Log(string message, uint val);
    event IndexLog(address indexed sender, uint val);


    function example() external {
        emit Log("text",123);
        emit IndexLog(msg.sender, 456);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function message(address _to, string calldata _message) external {
        emit Message(msg.sender, _to, _message);
    }

}