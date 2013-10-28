class BlogController < ApplicationController
  def home
    @latestposts = BlogPost.latest_n(5)
  end

  def getById
    id = params[:id]
    @blog = BlogPost.find(id)
    render "blog/get"
  end

  def getBySlug
    slug = params[:slug]
    @blog = BlogPost.find_by_slug(slug)
    render "blog/get"
  end
end
