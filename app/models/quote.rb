class Quote < ApplicationRecord
  validates :author, :content, :date, :location, presence: true
end