class Bot < ApplicationRecord

    def self.search_words words 
        CLIENT.search(words, lang: "en").first.text 
    end

    def self.tweet status
        CLIENT.update(status)
    end

end
