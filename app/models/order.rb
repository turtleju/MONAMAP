class Order < ApplicationRecord
  belongs_to :subscription
  has_many :subscription_options, through: :subscription
  has_many :options, through: :subscription_options

  monetize :amount_cents
end
