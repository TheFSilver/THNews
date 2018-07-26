class Link < ApplicationRecord
  belongs_to :user
  belongs_to :mboard

  has_many :comments, as: :commentable
end
