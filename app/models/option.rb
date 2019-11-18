class Option < ApplicationRecord
  belongs_to :category
  has_many :subscription_options
end
