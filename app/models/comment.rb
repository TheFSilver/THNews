class Comment < ApplicationRecord
  belongs_to :link
  belongs_to :user
  
  has_and_belongs_to_many :parent_comments, :class_name: "Comment", :foreign_key => "parent_comment_id"
  has_many :child_comments, :class_name: "Comment", :foreign_key => "child_comment_id"
end
