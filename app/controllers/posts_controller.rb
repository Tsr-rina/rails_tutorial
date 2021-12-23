class PostsController < ApplicationController
  def index
    @sagwa = "バナナ" 
    @post = Post.all
    @post1 = Post.all[1]
  end
end
