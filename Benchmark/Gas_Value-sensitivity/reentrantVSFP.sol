pragma solidity ^0.4.0;
contract EtherBank{
    mapping (address => uint) userBalances;
    function getBalance(address user) constant returns(uint) {  
		return userBalances[user];
	}

	function addToBalance() {  
		userBalances[msg.sender] += msg.value;
	}

	function withdrawBalance() internal {  
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		uint x=0;
		for(uint y=0;y<10;y++){x++;}
		if(x==0){userBalances[msg.sender]=amountToWithdraw;}
		if(amountToWithdraw>0){
			if (!(msg.sender.call.value(amountToWithdraw)())) { throw; }
		}		
	}
}