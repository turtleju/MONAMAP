class Category < ApplicationRecord
  belongs_to :producer
  has_many :options
end
