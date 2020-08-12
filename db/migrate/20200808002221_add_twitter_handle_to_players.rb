class AddTwitterHandleToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :player_profiles, :twitterHandle, :string
    add_column :player_profiles, :twitchHandle, :string
  end
end
