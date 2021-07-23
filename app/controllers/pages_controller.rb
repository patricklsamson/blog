class PagesController < ApplicationController
  def archives
    @articles = Article.most_recent
  end

  def about; end

  def contact; end
end
