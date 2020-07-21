class RandomController < ApplicationController
  def random
    wikis = Wiki.all.to_a
    redirect_to wiki_path(wikis.sample)
  end
end
