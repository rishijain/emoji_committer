module EmojiCommitter
  class Analyzer

    #analyze the commit message
    #by breaking the commit message into words
    #and assign points to each word
    #the words will have to be grouped under different categories and thus categories
    #will also be scored.
    #and the category with highest score will decide what type of emoji to add to commit message.

    def initialize(commit_message)
      @commit_message = commit_message
      @score = Hash.new(0)
    end

    #step1
    def splitted_message
      EmojiCommitter::Tokenizer.split_message(@commit_message)
    end

    #step2
    def assign_points_to_words
      #assume the splitted_message is ["build", "is", "now", "fixed"]
      #so the return value from this should be in format of
      # {"build" => 3, "fixed" => 5, "is" => 0, "now" => 0}
      splitted_message.each {|word| assign_point(word.downcase)}
    end

    #step3

    private

    def assign_point(word)
      if EmojiCommitter::Words::ZeroWeightage.include?(word)
        @score['word'] = 0
      elsif EmojiCommitter::Words::OneWeightage.include?(word)
        @score['word'] = 1
      end
    end


  end
end
