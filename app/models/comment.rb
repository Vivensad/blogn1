# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  validates :username, presence: true, length: { minimum: 4 }
  validates :body, presence: true, length: { minimum: 1 }
end
