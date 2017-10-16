pragma solidity ^0.4.0;
contract SendBack {
    mapping (address => uint) userBalances;
    function withdrawBalance() { 
        uint x=0;
		for(uint y=0;y<100;y++){x++;}
		if(x==0){
		uint amountToWithdraw = userBalances[msg.sender];
		userBalances[msg.sender] = 0;
		msg.sender.send(amountToWithdraw);
		}
	}
}