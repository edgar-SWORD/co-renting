class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :form]

  def home
  end

  def form
  end
end
