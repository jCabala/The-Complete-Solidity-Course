pragma solidity >= 0.8.0;

contract GV {

    function getBlockNumber() public view returns(uint) {
        return block.number;
    }
}