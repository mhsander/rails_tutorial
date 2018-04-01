class FactsController < ApplicationController
  def index
    @facts = Facts.all
  end

  def new
    @fact = Facts.new
  end   
end
