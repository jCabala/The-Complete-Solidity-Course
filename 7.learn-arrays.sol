pragma solidity >=0.8.0;

contract LearnArrays {
    uint[] arr1;
    uint[] arr2;
    uint[200] fixedSizeArr;

    function push1(uint x) public {
        arr1.push(x);
    }

    function pop1() public {
        arr1.pop();
    }

    function getLength1() public view returns(uint) {
        return arr1.length;
    } 

    function remove1(uint idx) public {
        delete arr1[idx];

        //when you delete from an array the length stays the same
        //it just defaults the specified element
    }
}