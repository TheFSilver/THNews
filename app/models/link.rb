class Link < ApplicationRecord
  belongs_to :user
  belongs_to :mboard

  # Les liens ont des commentaires "commentables"
  has_many :comments, as: :commentable
end
