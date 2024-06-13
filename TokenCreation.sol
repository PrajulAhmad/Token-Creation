// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract MyCoin
{
    string public tokenName = "BREWIUM";
    string public tokenAbb = "BWM";
    uint public totalSupply = 0;

    //mapping address
    mapping(address => uint) public balances;

    //minting function
    function mint(address _add, uint _value) public 
    {
        totalSupply = totalSupply + _value;
        balances[_add] += _value; 
    }

    //burn function
    function burn(address _add, uint _value) public 
    {
        if(balances[_add] >= _value)
        {
            totalSupply -= _value;
            balances[_add] -= _value;
        }
    }
}
