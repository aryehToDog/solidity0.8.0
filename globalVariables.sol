// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract globalVariables {

    function globalVariable() external view returns(address , uint , uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;

        return(sender, timestamp, blockNum);
    }

}