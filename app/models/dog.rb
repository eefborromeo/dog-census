class Dog < ApplicationRecord
    validates :name, presence true, length: { minimum: 1}
    validates :age, presence true
    validates :breed, presence true, length: { minimum: 2}
end
