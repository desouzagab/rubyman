
module Animations
    
    def self.win
        system('clear')       
        puts "YOU WIN"
    end
    def self.lost
        system('clear')       
        puts "YOU LOSE"
        
            p " x"
            p "-|- "
            p "[/\]"   
    end

    def self.hangman(num)
        case num
        when 1
            system('clear') 
            p " o"
        when 2 
            system('clear') 
            p " o"
            p " |"
        when 3 
            system('clear') 
            p " o"
            p "/|"
        when 4 
            system('clear') 
            p " o"
            p "/|\ "
        when 5 
            system('clear') 
            p " o"
            p "/|\ "
            p "/    "
        when 6 
            system('clear') 
            p " o"
            p "/|\ "
            p "/\    "
        
            
        end
        
    end
end