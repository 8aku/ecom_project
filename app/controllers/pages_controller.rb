class PagesController < ApplicationController
  def about
  	@about = Page.select(:about)
  end

  def contact
  	@contact = Page.select(:contact)
  end
end
