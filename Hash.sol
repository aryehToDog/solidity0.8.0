// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Hash {

    function hashFunc(string memory text, uint num, address adr) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text, num, adr));
    }

    function encodeFunc(string memory text1, string memory text2) external  pure returns (bytes memory) {
        return abi.encode(text1, text2);
    }

    function encodepackeFunc(string memory text1, string memory text2) external  pure returns (bytes memory) {
        return abi.encodePacked(text1, text2);
    }

    function hashFuncWithPanck(string memory text, uint num, string memory text2) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text, num, text2));
    }


}