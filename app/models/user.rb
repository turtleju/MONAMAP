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
  belongs_to :distribution, optional: true
end
