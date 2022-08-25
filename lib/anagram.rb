class Anagram
    attr_reader :word
    attr_accessor :array_list

    def initialize(word)
        @word = word
    end

    def match(array_list)
        array_list.filter {|word_occurrence| word_occurrence.chars.sort == @word.chars.sort}
    end
end

#verify
listen = Anagram.new("allergy")
listen.match(%w[gallery ballerina regally clergy largely leading])
