class HomeController < ApplicationController
  def index
     @top_posts = Post.first(25)   
  end
end
        
