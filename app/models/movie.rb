class Movie < ApplicationRecord
  has_many :superior_comparisons, foreign_key: :superior_movie_id, class_name: "Comparison"
end
