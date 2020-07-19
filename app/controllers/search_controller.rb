class SearchController < ApplicationController
  def index
    query = params[:q].downcase
    wiki = Wiki.find_by(title: query)
    if wiki.nil?
      all_wiki = Wiki.all
      matching_wiki = Array.new
      all_wiki.each do |entry|
        title = entry.title.downcase
        unless title.index(query).nil?
          matching_wiki << entry
        end
      end
      @wikis = matching_wiki
      @query = params[:q]
      render 'search/result'
    else
      redirect_to wiki_path(wiki)
    end
  end
end
