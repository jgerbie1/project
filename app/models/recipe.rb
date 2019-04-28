class Recipe < ApplicationRecord
    has_many :comments, dependent: :destroy 
     validates :title, presence: true, length: { minimum: 5 }
      validates :description, presence: true, length: { minimum: 10 }
       validates :ingredients, presence: true, length: { minimum: 10 }
        validates :instruction, presence: true, length: { minimum: 10 }
end
