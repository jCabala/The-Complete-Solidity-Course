pragma solidity >= 0.7.0 < 0.9.0;

contract Coin {
    address public minter;
    mapping(address => uint) public balances;

    event Sent(address from, address to, uint amount);

    error insuficientFunds (uint requested, uint available);

    constructor() {
        minter = msg.sender;
    }

    //makes new coins and sends them to address
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount; 
    }

    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) {
            revert insuficientFunds({
                requested: amount,
                available: balances[msg.sender]
            });
        }
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        
        emit Sent(msg.sender, receiver, amount); 
    }
}