class Api::V1::ArticlesController < ApplicationController
 protect_from_forgery with: :null_session

 respond_to :json, :xml, :json

  def index
    respond_with Article.all
  end
  
  def show
    respond_with Article.find(params[:id])
  end
  
end