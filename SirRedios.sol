pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SirRedios is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SirRedios(address _owner)  UpgradeableToken(_owner) {
    name = "SirRedios";
    symbol = "SIR";
    totalSupply = 5000000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}