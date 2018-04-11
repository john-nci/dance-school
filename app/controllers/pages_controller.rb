class PagesController < ApplicationController
  def home
  end

#Method to pass class data into Product view through embedded ruby in product view
  def product
    @classes = Classtype.find(params[:id])
  end

  def contact
  end
end
