class User < ApplicationRecord
  has_many :groups, foreign_key: "author_id"
  has_many :entities, foreign_key: "author_id"
end
