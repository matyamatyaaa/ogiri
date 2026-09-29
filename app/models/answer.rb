class Answer < ApplicationRecord
  belongs_to :topic
  has_many :likes
end
