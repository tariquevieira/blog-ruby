class PostsController < ApplicationController
  layout 'post'
  before_action :set_post, only: %i[show edit update destroy]
  def index
    @posts = Post.all
    render layout: 'application'
  end 

  def show
  end
  
  def new 
    @post = Post.new
  end
  def edit
  end

  def create
    @post = Post.new(post_params)
    
    respond_to do |format|
      if @post.save
        
        format.html { redirect_to '/posts', notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end 
  end

  def update 
    if @post.update(post_params)
      redirect_to '/posts'
    else
      render :edit
    end
  end


  private 

  def set_post
    @post = Post.find(params[:id])
  end 
  def post_params
    params.require(:post).permit(:title, :content, :publish_at,:author_id)
  end

end
