# pragma version 0.4.0

# Declare a mapping named 'vote_counts' that maps a uint256 (candidate ID) to a uint256 (vote count).

vote_counts: HashMap[uint256, uint256]

# Create an external function named 'cast_vote' that takes a uint256 'candidate_id' as input and increments the vote count in 'vote_counts'.

@external
def cast_vote(candidate_id: uint256):

    self.vote_counts[candidate_id] += 1

# Create an external view function named 'get_votes' that takes a uint256 'candidate_id' as input and returns the vote count for that candidate.

@external
@view
def get_votes(candidate_id: uint256) -> uint256:

    return self.vote_counts[candidate_id]
