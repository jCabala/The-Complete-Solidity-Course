pragma solidity >= 0.7.0 < 0.9.0;

contract LearnStrings {
    string greetings = "Hello";
    
    function sayHello() public view returns (string memory) {
        return greetings;
    }

    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    //If we want eg. length or a certain char 
    //we have to convert string to bytes

    //Bytes are generally less expensive

    function getLength() public view returns (uint) {  
        return bytes(greetings).length;
    }

    function getChar(uint n) public view returns (string memory) {
        bytes memory firstCharByte = new bytes(1);
        firstCharByte[0] = bytes(greetings)[n];
        return string(firstCharByte);
    }
}