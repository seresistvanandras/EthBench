pragma solidity ^0.4.0;
contract A{
    mapping (address => uint) userBalances; 
    
    function withdrawBalance_A(){
        var c=reentrant(0x6bE7ab2FE5a48c86065f3c96563e1E0fdF7eA520);
        bool returnValue=c.callcode('withdrawBalance');
    }
    function getBalance(address user) constant returns(uint) {  
        return userBalances[user];
    }

    function addToBalance() {  
        userBalances[msg.sender] += msg.value;
    }
}

contract reentrant{
    mapping (address => uint) userBalances; 
    
    function withdrawBalance() { 
    uint amountToWithdraw=userBalances[msg.sender];
    if (!(msg.sender.call.value(amountToWithdraw)())){ throw; }
	userBalances[msg.sender]=0;
}     
}