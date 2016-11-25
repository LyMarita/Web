class NewsController < ApplicationController
  def index
    @news = New.all
    @cates = Category.all
  end
end
