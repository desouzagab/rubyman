require_relative('Words')
class Game
    include Words
    attr_reader :word
    def initialize
        @word = Words.word
    end

end


