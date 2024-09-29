class Tweet < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_description, against: [:description]
end
