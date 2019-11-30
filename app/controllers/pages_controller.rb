class PagesController < ApplicationController
  def about
  	@about = Page.all
  end

  def contact
  	@contact = Page.select(:contact)
  end
end
