// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract fallbackTest {

    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }

}