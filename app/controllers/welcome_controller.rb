class WelcomeController < ApplicationController
  def index
    @comments = Comment.all
  end
end
