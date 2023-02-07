pragma solidity >= 0.7.0 < 0.9.0;

contract TestStorageArrays {
    int[] public numbers;

    function test() public {
        numbers.push(1);
        numbers.push(2);

        int[] memory newNumbers = numbers;
        newNumbers[0] = 69;
    } 
}
