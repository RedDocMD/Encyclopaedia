class WikiController < ApplicationController
  def index
    @articles = Wiki.all
  end
end
