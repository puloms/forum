require 'rails_helper'

RSpec.describe Topic, type: :model do
  it "should create a comment" do
    topic = Topic.create!(title: "This is a topic!", body: "This is the content of my topic!")
    comment = topic.comments.create!(title: "hi", body: "hi, this is a comment!")

    expect(topic.comments).to include(comment)
  end
end
