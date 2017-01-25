class PagesController < ApplicationController
  def main
  end
  def general
  end
  def general2
  end
  def destinations
  end
  def construction
    @constructionplan = Constructionplan.find(1)
  end

end
