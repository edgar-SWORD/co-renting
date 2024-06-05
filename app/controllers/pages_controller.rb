class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :form, :test_form]

  def home
  end

  def form
  end

  def test_form
  end
end
