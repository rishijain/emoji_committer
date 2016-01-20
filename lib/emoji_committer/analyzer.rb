require 'tokenizer'

module EmojiCommitter
  include Tokenizer

  class Analyzer

    #analyze the commit message
    #by breaking the commit message into words
    #and assign points to each word
    #the words will have to be grouped under different categories and thus categories
    #will also be scored.
    #and the category with highest score will decide what type of emoji to add to commit message.

    def initialize(commit_message)
      @commit_message = commit_message
    end

    def run!
      p '1----1'
      p split_message(@commit_message)
    end

  end
end
