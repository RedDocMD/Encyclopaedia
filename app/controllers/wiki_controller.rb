require 'kramdown'

class WikiController < ApplicationController
  def index
    @articles = Wiki.all
  end

  def show
    @title = params[:title]
    @wiki = Wiki.find_by(title: @title)
    @html = Kramdown::Document.new(@wiki.text).to_html unless @wiki.nil?
  end
end
