// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract array {

    // 变长数组
    uint[] public nums = [1,2,3];
    // 定长数组
    uint[3] public numsFixer = [4,5,6];

    function examples() external {
        // 1 增加数组元素
        nums.push(4); // 1,2,3,4
        // 2 获取数组元素
        uint a = nums[1];
        // 3 重新赋值元素
        nums[2] = 777;  
        // 删除元素 但是不能删除数组长度
        delete nums[1]; // 1 0 777 4
        //删除元素
        nums.pop();
        // 获取元素长度
        nums.length;

        // 定义一个定长数组
        uint[] memory arr = new uint[](5);
        arr[3] = 222;
    }

    function remove(uint _index) external {
        require(_index < nums.length);
        for (uint i ; i < nums.length - 1; i ++) {
            nums[i] = nums[i ++];
        }
        nums.pop();
    }

    function returnsArray() external view returns(uint[] memory) {
        return nums;
    }

}