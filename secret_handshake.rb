# converts integer to secret
class SecretHandshake
  attr_reader :binary
  MOVES = ['wink', 'double blink',
           'close your eyes', 'jump'].freeze

  def initialize(integer)
    @binary = translate(integer.to_i)
  end

  def translate(integer)
    ones     = integer.to_s(2).reverse.chars
    @reverse = true if ones[-4] == '1'
    ones[0..3]
  end

  def commands
    moves = load_moves
    @reverse ? moves.reverse : moves
  end

  def load_moves
    binary
      .each_with_index
      .each_with_object([]) do |(ones, index), result|
      result << MOVES[index] if ones == '1'
    end
  end
end
