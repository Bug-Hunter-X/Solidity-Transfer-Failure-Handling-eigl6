# Solidity Transfer Failure Handling
This example demonstrates a common error in Solidity: improperly handling the return value of a low-level call when transferring Ether.  The bug occurs because the function doesn't correctly handle cases where the ether transfer fails. This can lead to unexpected behavior, such as an inconsistent state where funds are deducted from the sender's balance but not successfully sent to the recipient.  The solution illustrates a better way to handle the transfer, including a more robust error handling mechanism.