class Comment < ActiveRecord::Base
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :comment, polymorphic: true

  validates :body, presence: true
end
