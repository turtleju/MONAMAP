class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subscriptions
  has_many :orders, through: :subscriptions
  has_many :subscription_options, through: :subscriptions
  has_many :options, through: :subscription_options

  has_many :holidays
  has_many :absences
  has_many :received_gifts, foreign_key: :receiver_id, class_name: 'Gift'
  has_many :given_gifts, foreign_key: :giver_id, class_name: 'Gift'
  belongs_to :distribution, optional: true
end
