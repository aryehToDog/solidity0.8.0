// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
// 函数签名 / 函数选择器


contract FunctionSelector {
    
    function geiSelsctor(string calldata _func) external pure returns (bytes4) {
        // transfer(address,uint256)
        // 0xa9059cbb
        return bytes4(keccak256(bytes(_func)));
    } 
}


contract Receiver {

    event Log(bytes data);

    function transfer(address _to, uint _amount) public {
        // 0xa9059cbb  // 四个字节
        // 5b38da6a701c568545dcfcb03fcb875f56beddc4
        // 000000000000000000000000000000000000000000000000000000000000007b
        emit Log(msg.data);
    }
}