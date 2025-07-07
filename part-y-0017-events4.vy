# pragma version 0.4.0

# Define an event named 'BatchTransferEvent' with three parameters:
# - 'sender' (indexed, address)
# - 'total_recipients' (uint256)
# - 'total_amount' (uint256)

event BatchTransferEvent:
    sender: indexed(address)
    total_recipients: uint256
    total_amount: uint256

# Create a function named 'batch_send' that is payable and takes two inputs:
# - Dynamic array of addresses named 'recipients' with size 5
# - Dynamic array of uint256 named 'amounts' with size 5
# Assert both inputs are the same length, otherwise revert with 'Array lengths must match'.
# Create a local variable 'total_amount' of type uint256 and initialize with '0'
# Loop through the arrays using 'i' as uint256 and send each recipient their respective amount in range of 5.
# Loop through all amounts and sum it in 'total_amount'
# After completing all transfers, log 'BatchTransferEvent' with 'msg.sender', total recipients, and total amount sent.

@external
@payable
def batch_send(recipients: DynArray[address, 5],amounts: DynArray[uint256, 5]):

    assert len(recipients) == len(amounts), 'Array lengths must match'

    total_amount: uint256 = 0

    for i: uint256 in range(5):
        send(recipients[i], amounts[i])

        total_amount += amounts[i]

    log BatchTransferEvent(msg.sender, len(recipients), total_amount)
