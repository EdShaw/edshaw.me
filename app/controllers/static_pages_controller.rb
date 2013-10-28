class StaticPagesController < ApplicationController

  def home
    @latestblogpost = BlogPost.latest
  end

end
