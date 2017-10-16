pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function withdrawBalance() { 
        uint i = 0;
        i = i + 100;
        if (i == 0){
		    uint amountToWithdraw = userBalances[msg.sender];
		    userBalances[msg.sender] = 0;
	    	msg.sender.send(amountToWithdraw);
        }
	}
}