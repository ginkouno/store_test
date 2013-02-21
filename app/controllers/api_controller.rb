class ApiController < ApplicationController
  def index
    @parents = Parent.page(params[:page])
  end
end
