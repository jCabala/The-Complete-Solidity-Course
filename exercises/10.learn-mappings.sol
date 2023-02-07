pragma solidity >= 0.8.0;

contract LearnMapping {
    //Mapping: key => value pairs
    //key can be string, uint or bool
    // value can be anything
    mapping(address => uint) public myMap;

    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}