class Game < ApplicationRecord
    has_many :comments
    
    def self.score
        self.upvotes - self.downvotes
    end
end
