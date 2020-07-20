class Wiki < ApplicationRecord
  validates :title, :text, presence: true
  validates :title, uniqueness: {case_sensitive: false, message: "A wiki of this title already exists"}
end
