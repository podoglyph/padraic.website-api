class Api::V1::PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    id = params[:id]
    render json: Post.find(id)
  end

end
