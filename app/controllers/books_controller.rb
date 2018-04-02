class BooksController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:books].inspect
  end
end
