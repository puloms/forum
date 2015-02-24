class Topic < ActiveRecord::Base
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, :body, presence: true
end
