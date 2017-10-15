class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:create, :index]
  respond_to :json

  def index
    # respond_to do |format|
    #   format.html {render text: "Your data was sucessfully loaded. Thanks"}
    #   format.json { render text: User.last.to_json }
    # end
  end

  def show
    respond_with User.find(params[:id])
  end

  def create
    respond_with User.create(access_token: params[:access_token], city: params[:city], created_at: Time.now, phone: params[:phone], region: params[:region], updated_at: Time.now)
  end

end
