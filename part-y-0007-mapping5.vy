# pragma version 0.4.0

# Declare a nested mapping named 'scores' that maps an address to another mapping of uint256 (game ID) to int256 (score).

scores: HashMap[address, HashMap[uint256, int256]]

# Create an external function named 'set_score' that takes an address 'player', a uint256 'game_id', and an int256 'score' as inputs and stores the score in 'scores'.

@external
def set_score(player: address, game_id: uint256, score: int256):

    self.scores[player][game_id] = score

# Create an external view function named 'get_score' that takes an address 'player' and a uint256 'game_id' as inputs and returns the corresponding score.

@external
@view
def get_score(player: address, game_id: uint256) -> int256:

    return self.scores[player][game_id]
