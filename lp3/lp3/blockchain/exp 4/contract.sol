

contract MyBank {
    mapping(address => uint) private _balances;
    address public owner;
    event LogDepositMade(address accountHolder, uint amount);

    constructor() {
        owner = msg.sender;
        emit LogDepositMade(msg.sender, 1000);
    }


    function viewBalance() public view returns (uint) {
        return _balances[msg.sender];
    }
}
