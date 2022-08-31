// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract DataLocations {

    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata y, string calldata s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct(123,"text");

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;

        _internal(y);

        uint[] memory arr = new uint[](3);
        arr[0] = 111;
        return arr;
    }

    function _internal(uint[] calldata y) private pure {
        uint x = y[0];
    }

}