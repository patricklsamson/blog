class PagesController < ApplicationController
  def archives
    session[:action] = 'archives'
    @articles = Article.most_recent
  end
end
