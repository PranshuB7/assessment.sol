// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract PToken {

  // public variables here
  string public TNAME = "BASKETBALL";
  string public TAbbrv = "BTBL";
  uint public TotSuplly = 0;
  // mapping variable here
  mapping (address => uint) public Bbalances;
  // mint function
  function Bmint (address _baddress, uint _bvalue) public {
    TotSuplly += _bvalue;
    Bbalances[_baddress] += _bvalue;
  }
  // burn function
  function Bburn (address _baddress, uint _bvalue) public {
    if (Bbalances[_baddress]>=_bvalue){
      TotSuplly -= _bvalue;
      Bbalances[_baddress] -= _bvalue;
    }  
  }
}
