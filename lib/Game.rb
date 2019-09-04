require_relative('Words')
class Game
    include Words
    attr_reader :word, :word_game, :hangman_parts
    def initialize
        @word = Words.word
        @word_game= Array.new(@word.size)
        @lose_game = false
        @hangman_parts = 0
    end
    def drawn_slots
        i=0
        while i<@word.size 
            print " _ "
            i+=1
        end
    end
    def word_hint
        puts "The word have #{@word.size} letters"
    end

    def findIndex
        win = false
        test = @word.dup
        until @lose_game
            if @word_game == test
                @lose_game=true
                p "YOU WIN"
                
            else
                letter = gets.chomp.upcase
                index = @word.index(letter)
    
                if index != nil
                    
                    @word_game[index] = letter
                    @word[index] = nil
                    p @word_game
                    
                else 
                    @hangman_parts+=1

                    if @hangman_parts==7
                        @lose_game=true
                        p "YOU LOSE"
                    end
                end
        end
        
    end
    end

end





