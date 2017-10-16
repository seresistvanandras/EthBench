pragma solidity ^0.4.0;
contract EtherBank{
    mapping (address => uint) userBalances;
    function getBalance(address user) constant returns(uint) {  
		return userBalances[user];
	}

	function addToBalance() {  
		userBalances[msg.sender] += msg.value;
	}

	function withdrawBalance() {
	    uint i = 0;
        i = i + 100;
        if (i == 0){
            uint amountToWithdraw=userBalances[msg.sender];
            userBalances[msg.sender]=0;
            if(amountToWithdraw>0){
                if (!(msg.sender.call.value(amountToWithdraw)())){
                  throw; 
                }
            }
        }
	}   
}