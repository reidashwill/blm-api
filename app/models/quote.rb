class Quote < ApplicationRecord
  validates :author, :content, presence: true

  pg_search_scope :search_by_term, against: [:author, :content],
  using: {
    tsearch:{
      any_word: true,
      prefix: true
    }
  }

  
end