class SubscriptionOption < ApplicationRecord
  belongs_to :subscription
  belongs_to :option
end
