// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract owanable {

    address public owner;
    
    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOnwer() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function setOwner(address _newOwner) external OnlyOnwer {

        require(_newOwner != address(0),  "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCallFunc() external OnlyOnwer{

    }

    function anyoneCanCallFunc() external {

    }

}