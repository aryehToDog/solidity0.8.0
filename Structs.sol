// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Structs {

    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota",1990,msg.sender);
        Car memory lanbo = Car({model:"Lanbo", year:1980, owner:msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2000;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lanbo);
        cars.push(tesla);

        Car storage _car = cars[0];
        _car.year = 1999;
        delete _car.owner;

        delete cars[1];

    }

}