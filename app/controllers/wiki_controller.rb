require 'kramdown'

class WikiController < ApplicationController
  def index
    @articles = Wiki.all
  end

  def show
    id = params[:id]
    if is_integer? id
      @wiki = Wiki.find_by(id: id) 
    else
      @wiki = Wiki.find_by(title: id) 
    end
    @html = Kramdown::Document.new(@wiki.text).to_html unless @wiki.nil?
  end

  def new
  end

  private
  def is_integer?(str)
    str == str.to_i.to_s
  end
end
