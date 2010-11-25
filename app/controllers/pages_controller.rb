class PagesController < ApplicationController

  def home
    @title = "Home"
    if current_user
      redirect_to lists_path
    end  
  end

  def about
    @title = "About"
  end

  def tour
    @title = "Tour"
  end

  def blog
    @title = "Blog"
  end

  def faq
    @title = "FAQ"
  end

  def contact
    @title = "Contact"
  end

  def plans
    @title = "Plans"
  end
end
