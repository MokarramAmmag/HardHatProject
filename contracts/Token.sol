// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "hardhat/console.sol";

contract Token{
    string public name = "MYToken";
    string public symbol = "TY";

    uint256 public totalSupply = 1000000;
    address public owner ;

    mapping(address => uint256) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }
    function transfer(address to, uint256 amount) external{
        console.log("Sender balance is %s tokens", balances[msg.sender]);
        console.log("Trying to send %s tokens to %s", amount, to);

        require(balances[msg.sender] >= amount, "Not enough tokens");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
    function balanceOf(address tokenHolder) external view returns(uint){
        return balances[tokenHolder];
    }
}