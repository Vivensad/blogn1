# frozen_string_literal: true

class PagesController < ApplicationController
  def about
    @heading = 'Страничка про нас!'
    @text = 'Мы это Мы!'
  end

  def contacts; end
end
