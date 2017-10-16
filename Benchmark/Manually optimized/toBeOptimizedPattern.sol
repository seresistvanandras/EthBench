pragma solidity ^0.4.0;
contract manOpt {
    uint sum=0;
    function gas(uint x){
        for (uint i = 0 ; i < x ; i++){
             sum += i; 
        }
    }
}