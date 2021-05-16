class ArticleSample < ApplicationRecord
    validates :name, presence: true,
                     uniqueness: true  
    validates :age, presence: true
    validates :body, presence: true,
                    length: {minimum: 5} 
end
