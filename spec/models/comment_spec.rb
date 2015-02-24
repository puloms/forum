require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "should create a response as a comment" do
    comment = Comment.create!(title: "hi", body: "hi, this is a comment!")
    response = comment.comments.create!(title: "hello", body: "hello, this is a response to your comment!")

    expect(comment.comments).to include(response)
  end
end
