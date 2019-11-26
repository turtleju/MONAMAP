class Subscription < ApplicationRecord
  belongs_to :user
  has_many :subscription_options
  has_many :orders

  def price_cents    
    subscription_options.reduce(0) do |sum, sub_opt|
      sum += sub_opt.option.price_cents
    end
  end
end
