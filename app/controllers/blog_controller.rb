class BlogController < ApplicationController
  def home

    latestblog = BlogPost.new
    latestblog.title = "Hello, World!"
    latestblog.post = "Hello, World!"
    latestblog.id = 100

    @latestposts = [latestblog, latestblog]

  end

  def get(id)

    @blog = BlogPost.new
    @blog.title = "Hello, Test!"
    @blog.id = 101
    @blog.post = "japfdsfsdf sdnfksdf psdnf sdkf opsdjfposdj fpsdfpjsdpfj spdjfposdjfnds;fand'sfig nls/d.jgz"

    render "blog/get"

  end

  def getById
    get(params[:id])

  end

  def getBySlug
    get(params[:slug])

  end
end
