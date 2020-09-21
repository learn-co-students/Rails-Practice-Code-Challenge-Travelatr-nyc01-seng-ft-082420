class BloggersController < ApplicationController
  def new
    @blogger = Blogger.new(blogger_params)
  end

  def create
    @blogger = Blogger.new(blogger_params)
    if @blogger.valid?
      @blogger.save
      redirect_to @blogger
    else
      render :new
    end
  end

  def show
    @blogger = Blogger.find(params[:id])
    if @like
      @blogger.like += 1
      @blogger.save
    end
  end

  private
    def blogger_params
      params.require(:blogger).permit!
    end
end
