require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "should respond to comments" do
    comment = Comment.create!(title: "hi", body: "hi, that's a comment!")
    response = comment.comments.create!(title: "hello", body: "hello, that's a response to your comment!")

    expect(comment.comments).to include(response)
  end
end
