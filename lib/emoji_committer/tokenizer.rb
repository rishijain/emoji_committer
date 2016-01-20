module EmojiCommitter
  module Tokenizer

    #its job is to tokenize the passed message
    #and return the array of tokens
    def split_message(commit_message)
      commit_message.split(' ')
    end

  end
end
