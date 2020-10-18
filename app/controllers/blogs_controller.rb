class BlogsController < ApplicationController

  def index
      @blog = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(strong_params)
    if @blog.save!
      redirect_to blog_index, notice: "New Blog was created."
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:blog).permit(:header, :sub_header, :author, :author_info, :hashtags, :image, :id)
  end

end
