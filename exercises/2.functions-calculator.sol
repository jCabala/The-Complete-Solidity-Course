pragma solidity >= 0.7.0 < 0.9.0;

contract MultiplyCalculator {
    constructor() {

    }

    function multiply(uint a, uint b) public view returns (uint) {
        return a * b;
    }
}