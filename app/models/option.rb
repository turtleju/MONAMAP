class Option < ApplicationRecord
  monetize :price_cents
  belongs_to :category
  has_many :subscription_options
end
