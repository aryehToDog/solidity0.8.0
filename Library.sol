// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

library Math {
    function max(uint x, uint y) internal pure returns (uint) {
        return x >= y ? x : y;
    }
}

contract Test {

    function testMax(uint x, uint y) external pure returns (uint) {
        return Math.max(x,y);
    }
}


library Arraylib {

    function find(uint[] storage arr, uint x) internal view returns (uint) {

        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        revert("not find");
    }

}

contract TestArray {

    using Arraylib for uint[];

    uint[] arr = [1,2,3];

    function testFind() external view returns (uint) {
        return  arr.find(2);
    }

}