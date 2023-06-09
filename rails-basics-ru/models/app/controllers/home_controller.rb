# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = Article.all
  end
end
