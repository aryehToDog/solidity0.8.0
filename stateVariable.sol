// SPDX-License-Identifier: GPL-3.0
// ηΆζει
pragma solidity ^0.8.7;

contract stateVariables {

    uint public myUint = 123;

    function foo() external pure {
        uint notStateVariable = 456;
    }

}