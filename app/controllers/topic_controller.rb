class TopicController < ApplicationController
  def home
    @topics = Topic.all
  end
end
