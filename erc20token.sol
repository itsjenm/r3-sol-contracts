// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.6.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.6.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";

contract Br3ach is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Br3ach", "BR3") {}

    function mint(uint256 initialSupply) public onlyOwner {
        _mint(msg.sender, initialSupply);
    }
    function decimals() public view virtual override returns (uint8) {
  return 16;
}
}
