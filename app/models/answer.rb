class Answer < ApplicationRecord
  belongs_to :question
  validates :question, presence: true
  validates :body, length: { minimum: 10 }, presence: true
end
