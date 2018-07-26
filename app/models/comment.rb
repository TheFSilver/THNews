class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  
  # On declare que les comments peuvent appartenir à plusieurs models via commentable, ils sont polymorphes ( liens et commentaires)
  belongs_to :commentable, polymorphic: true 
  # Les commentaires sont "commentables"
  has_many :comments, as: :commentable
end
