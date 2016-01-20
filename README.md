# EmojiCommitter

I like to add emoji's to my commit messages. I don't randomly add any emoji after the commit message. Rather they are carefully choosen. It depends on the type of commit message I have written. After seeing the image, you may be able to understand what I am talking about. 

This gem is my attempt to automate the process of manually choosing emoji and adding it to the message. It would analyze the commit message, choose an emoji which fits the analysis and use git hooks to append the emoji to entered commit message.

![alt tag](https://raw.github.com/rishijain/emoji_committer/master/sample.png)

P.S It is a very personal choice of adding emojis to commit message. I think adding emojis make the commit message a bit more interesting. It is totally OK if you think this is a stupid thing to do. But it is my stupid thing to do. So don't worry about it and don't use it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'emoji_committer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji_committer
