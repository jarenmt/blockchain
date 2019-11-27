    pragma solidity 0.5.11;

    // you can only edit the dog list if you are the owner and
    // it is past January 1st, 2020

    contract dogMap {
        mapping(uint256 => Dog) public dogs;
        uint256 public dogCount = 0;
        address owner;
        uint startTime = 1577836800; // Jan 1st, 2020 


        modifier onlyOwner() {
            require(msg.sender == owner);
            _;
        }

        modifier onlyOpen {
            //open at the start of the year
            require(block.timestamp >= startTime);
            _;
        }

        struct Dog {
            uint _uid;
            string _firstName;
            string _lastName;
        }

        constructor() public {
            owner = msg.sender;
        }

        function addDog(string memory _firstName, string memory _lastName) public onlyOpen onlyOwner {
            countIncrement();
            dogs[dogCount] = Dog(dogCount, _firstName, _lastName);
        }

        function countIncrement() internal {
            dogCount += 1;
        }
    }