module EmojiCommitter
  class Analyzer

    #analyze the commit message
    #by breaking the commit message into words
    #and assign points to each word
    #and then return words with 2 highest points and
    #then emoji based on those words will be added to the commit

    def initialize(commit_message)
      @commit_message = commit_message
      @score = Hash.new(0)
    end


    def run
      assign_points_to_words
      top_words_in_order_of_points = [word_with_highest_point, word_with_second_highest_point].compact
    end

    private

    def splitted_message
      EmojiCommitter::Tokenizer.split_message(@commit_message)
    end

    def assign_points_to_words
      #assume the splitted_message is ["build", "is", "now", "fixed"]
      #so the return value from this should be in format of
      # {"build" => 3, "fixed" => 5, "is" => 0, "now" => 0}
      splitted_message.each {|word| assign_point(word.downcase)}
    end

    def assign_point(word)
      if EmojiCommitter::Words::ZeroWeightage.include?(word)
        @score[word] = 0
      elsif EmojiCommitter::Words::OneWeightage.include?(word)
        @score[word] += 1
      else
        @score[word] += 0.25
      end
    end

    def category_with_max_points
      return nil if @score.keys.empty?
      word_with_max_point = @score.max_by {|k, v| v}[0]
      @score.delete(word_with_max_point)
    end

    def word_with_highest_point
      category_with_max_points
    end

    def word_with_second_highest_point
      category_with_max_points
    end
  end
end
