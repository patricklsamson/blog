class PagesController < ApplicationController
  def archives
    @articles = Article.most_recent
  end
end
