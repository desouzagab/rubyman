require_relative('words')
require_relative('animations')
class Game
    include Words, Animations
    def self.play
        @word = Words.word
        @word_game= Array.new(@word.size)
        @game = false
        @hangman_parts = 0
        puts "The word have #{@word.size} letters"
        tryLetter
    end
    def self.tryLetter
        win = false
        test = @word.dup
        until @game
            if @word_game == test
                @game=true
                Animations.win
            else
                letter = gets.chomp.upcase
                index = @word.index(letter)    
                if index != nil  
                    @word_game[index] = letter
                    @word[index] = nil
                    p @word_game
                    
                else 
                    @hangman_parts+=1
                    Animations.hangman(@hangman_parts)
                    if @hangman_parts==7
                        @game=true
                        Animations.lost
                    end
                end
        end
        
        end
    end #tryLetter

end

