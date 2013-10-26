class StaticPagesController < ApplicationController

  def home
    @latestblogpost = BlogPost.new
    @latestblogpost.id = 1001
    @latestblogpost.title = 1001
    @latestblogpost.post = 2000000000
  end

end
