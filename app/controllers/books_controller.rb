# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    # Normally I like to follow Sandi Metz's advice for one instance variable
    # per controller action but this is a demo so ¯\_(ツ)_/¯
    @categories = Book.all.order(:category).pluck(:category).uniq
    @books = Book.all
  end
end
