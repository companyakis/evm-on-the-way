# pragma version 0.4.0

# Create a function named 'batch_send' that is payable and takes two inputs:
# - Dynamic array of addresses named 'recipients' with size 10
# - Dynamic array of uint256 named 'amounts' with size 10
# Assert both inputs are the same length, otherwise revert with 'Array lengths must match'.
# Loop through the arrays using 'i' as uint256 and send each recipient their respective amount.
# Assert that the amounts of each entry should be more than zero, otherwise revert with 'Amount cannot be zero'.
# Finally use the `send` function to send every recipient the respective amount.

@external
@payable
def batch_send(recipients: DynArray[address, 10], amounts: DynArray[uint256, 10]):

    assert len(recipients) == len(amounts), 'Array lengths must match'

    for i: uint256 in range(10):

        assert amounts[i] > 0, 'Amount cannot be zero'

        send(recipients[i], amounts[i])
