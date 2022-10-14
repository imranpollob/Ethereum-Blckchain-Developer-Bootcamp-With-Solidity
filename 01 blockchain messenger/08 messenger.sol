//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleConstructor {
    address public owner;
    string public name;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function updateName(string memory _name) public {
        if (msg.sender == owner) {
            name = _name;
            count++;
        }
    }

}
