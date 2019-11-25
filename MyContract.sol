pragma solidity ^0.5.11;

contract HelloWorldContract {
    string public value;

    constructor() public {
        value = "myValue";
    }

    function set(string memory _value) public {
        value = _value;
    }
}