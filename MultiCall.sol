// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

// 把多个函数打包一起进行调用(多函数调用)

contract TestMultiCall {

    function fun1() public view returns (uint , uint) {
        return (1, block.timestamp);
    }

    function fun2() public view returns (uint , uint) {
        return (2, block.timestamp);
    }

    function getfun1Selector() public pure returns (bytes memory) {
        return abi.encodeWithSelector(this.fun1.selector);
    }

    function getfun2Selector() public pure returns (bytes memory) {
        return abi.encodeWithSelector(this.fun2.selector);
    }
}


contract MultiCall {

    function multicall(address[] calldata adds, bytes[] calldata datas) public view returns (bytes[] memory) {

        require(adds.length == datas.length, "length not require");

        bytes[] memory results = new bytes[](adds.length);
        for (uint i = 0; i < adds.length; i++) {
        (bool success, bytes memory result) = adds[i].staticcall(datas[i]);
        
        require(success, "call faild");
        results[i] = result;
        }
        return results;
    }

}
