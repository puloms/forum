class Comment < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :comment, polymorphic: true
end
