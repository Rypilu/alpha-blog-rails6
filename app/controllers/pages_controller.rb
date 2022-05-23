# frozen_string_literal: true
class PagesController < ApplicationController
  #  This expects a home.html.erb template under app/views/pages
  def home
    redirect_to articles_path if logged_in?
  end

  def about
  end
end