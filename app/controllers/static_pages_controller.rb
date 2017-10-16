class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    @components = Component.all
  end

  def help
  end

  def about
  end

  def contact
  end
end
