pragma solidity >= 0.8.0;

contract Oracle {
    address admin;
    uint public rand;

    constructor() {
        admin = msg.sender;
    }

    function feedRand(uint _rand) external onlyAdmin { 
        rand = _rand;
    }

    modifier onlyAdmin {
        require(msg.sender == admin);
        _;
    }
}


contract GenerateRandomNumber {
    Oracle oracle;

    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }

    function randNum(uint range) external view returns(uint) {
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % range;

    }
}