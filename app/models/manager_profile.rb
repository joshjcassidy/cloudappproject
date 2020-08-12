class ManagerProfile < ApplicationRecord
  belongs_to :user
  belongs_to :country, :foreign_key => "country_id"
  has_many :player_profile
end
