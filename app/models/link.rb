class Link < ApplicationRecord
  belongs_to :user
  belongs_to :messageboard
  has_many :comments
end
