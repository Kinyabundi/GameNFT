
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract GameNFT is ERC721 {
    uint256 newItemId;
    constructor() ERC721("GameNFT", "GNFT") {
        newItemId = 0;
    }
     function mintGame(address player)
        public
        returns (uint256)
    {
         newItemId +=1;
        _mint(player, newItemId);
        return newItemId;
    }
}