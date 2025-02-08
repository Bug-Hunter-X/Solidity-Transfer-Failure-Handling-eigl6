```solidity
function withdraw(uint amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    (bool success, bytes memory data) = msg.sender.call{value: amount}('');
    if (!success) {
        // Handle the transfer failure appropriately, for instance:
        // revert("Transfer failed"); // Or
        // refund the sender, log an error, etc.
        assembly {
            returndatacopy(0, 0, returndatasize())
            revert(0, returndatasize())
        }
    }
    balances[msg.sender] -= amount;
}
```