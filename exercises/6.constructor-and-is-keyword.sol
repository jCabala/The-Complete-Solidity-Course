pragma solidity >= 0.8.12;

contract Member {
    string name;
    uint age;

    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

contract Student is Member {
    constructor(string memory _name, uint _age) Member(_name, _age) {}

    function sayHiToTeacher() public view returns(string memory) {
        return string.concat("Hi, my name is ", name);
    }
}