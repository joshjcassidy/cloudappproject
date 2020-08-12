class AddManagerProfileIdToPlayerProfile < ActiveRecord::Migration[6.0]
  def change
    add_reference :player_profiles, :manager_profile, null: true, foreign_key: true
  end
end
