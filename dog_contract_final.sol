pragma solidity 0.5.11

contract timedDogMap {
    mapping(uint => Dog) public dogs;

    address owner;

    struct Dog {
        string _firstName;
        string _lastName;
        uint256 _id;
    }

    modifier onlyOwner() {
        require(msg.sender = owner);
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    uint256 dogCount public = 0;
    
    function addDog(string memory _firstName, string memory _lastName) public onlyOwner {
        incrementCount();
        dogs[dogCount] = Dog(_id, _firstName, _lastName);
    }

}