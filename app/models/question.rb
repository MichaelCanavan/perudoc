class Question < ApplicationRecord
  has_many :answers

  validates :description, :title, presence: true
  validates :title, length: { minimum: 10 }
  validates :description, length: { minimum: 15 }
end
