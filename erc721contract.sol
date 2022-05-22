pragma solidity 0.8.14;

import "@openzepplin/contracts/token/ERC721/ERC721.sol";

contract simpleCollectable is ERC721 {
uint256 public tokencounter;
constructor () public ERC721 ("Badge", "BG"){
    tokencounter = 0;
    }

    function createCollectible(starting memory tokenURI) public return (uiunt256) {
        uint256 newItemId = tokencounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI (newItemId, tokenURI);
        tokencounter = + 1;
        return newItemId;o
    }

}
