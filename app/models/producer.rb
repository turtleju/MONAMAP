class Producer < ApplicationRecord
  has_many :categories
  geocoded_by :address
  after_validation :geocode
  # , if: :will_save_change_to_address?
end
