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

  require 'bcrypt'
  include BCrypt
  before_filter :authenticate, only: [:new, :create, :edit]

  # Password on 31st October => "$2a$13$Im8ghHAnErY3aMvvXqqDqOLZDh72EM6aKZ2GcoA6LAnpz4/.uirSy"

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      hash = Password.new("$2a$13$Im8ghHAnErY3aMvvXqqDqOLZDh72EM6aKZ2GcoA6LAnpz4/.uirSy") # Hash of password to make new Password.
      isAdmin = 'edshaw' == username
      hasPass = hash == password #Password object equality will test if password is original secret.
      isAdmin && hasPass
    end
  end

  def new
    @blogpost = BlogPost.new
  end

  def slugify(title)
    return title
  end

  def create

    puts params

    post = BlogPost.new
    content = params["blog_post"]
    post.title = content["title"]
    post.post = content["post"]
    post.slug = slugify(params[:title])

    post.save

    redirect_to blog_create_path(@post)

  end

end
