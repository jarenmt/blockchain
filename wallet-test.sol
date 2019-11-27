pragma solidity 0.5.11;

contract walletTest {
    address payable wallet;
    mapping(address => uint256) public balances;

    function buyToken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Buy(msg.sender, 1);
    }

    event Buy(
        address indexed _buyer,
        uint256 _amount
    );

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        buyToken();
    }
}