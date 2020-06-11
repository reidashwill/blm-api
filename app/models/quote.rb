class Quote < ApplicationRecord
  validates :author, :content, presence: true
  paginates_per 15
  pg_search_scope :search_by_term, against: [:author, :content],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }

  
end