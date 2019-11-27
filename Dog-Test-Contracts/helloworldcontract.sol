pragma solidity 0.5.11;

contract HelloWorldContract {
    // string public value = "myValue";
    // bool public myBool = true;
    // int public myInt = -1;
    // uint public myUint = 1;
    // uint8 public myUint8 = 8;
    // uint256 public myUint256 = 99999;

    Dogs[] public dog;
    uint256 public dogCount;

    struct Dog {
        string _firstName;
        string _lastName;
    }

    function addDog(string memory _firstName, string memory _lastname) public {
        Dogs.push(Dog(_firstName, _lastName));
        dogCount += 1;
    }
}
