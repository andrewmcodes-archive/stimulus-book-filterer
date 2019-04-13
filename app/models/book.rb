# frozen_string_literal: true

class Book < ApplicationRecord
  enum binding: %i[hardcover paperback]
end
