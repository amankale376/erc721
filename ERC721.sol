// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.0 < 0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract TestToken is ERC721, Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721('MY TOKEN','MTN')  {
        _mint(msg.sender, 100 * 10 ** 18);

    }
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256) {

    }    
    modifier checkOwner(){
        
        return _;
    }
}