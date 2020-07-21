require 'kramdown'

class WikisController < ApplicationController
  def index
    @wikis = Wiki.all.to_a.sort_by { |x| x.title }
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
    @wiki = Wiki.new
  end

  def create
    wiki = Wiki.new(get_params)
    if wiki.save
      redirect_to wiki
    else
      @wiki = wiki
      render 'new'
    end
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def update
    @wiki = Wiki.find(params[:id])
    if @wiki.update(get_params)
      redirect_to @wiki
    else
      render 'edit'
    end
  end
  
  def destroy
    @wiki = Wiki.find(params[:id])
    @wiki.destroy

    redirect_to '/'
  end

  private
    def is_integer?(str)
      str == str.to_i.to_s
    end

    def get_params()
      params.require(:wiki).permit(:title, :text)
    end
end
