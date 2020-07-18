class WikiController < ApplicationController
  def index
    @articles = Wiki.all
  end

  def show
    @title = params[:title]
  end
end
