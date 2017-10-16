pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function withdrawBalance() { 
        D d = new D(4);
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		msg.sender.send(amountToWithdraw);
	}
}

contract D {
    uint x;
    function D(uint a) payable {
        x = a;
    }
}