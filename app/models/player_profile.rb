class PlayerProfile < ApplicationRecord
  belongs_to :user
  belongs_to :country, :foreign_key => "country_id"
  belongs_to :manager_profile, :foreign_key => "manager_profile_id", required: false
end
