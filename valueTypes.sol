// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract valueTypes {

    bool public b = true;

    uint public u = 123;
    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes32 public b32;

}