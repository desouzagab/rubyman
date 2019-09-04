
module Words
    def self.word
        File.readlines('lib/words.txt')[rand(1...5)].chomp
        .split('').each(&:upcase!)
    end
end