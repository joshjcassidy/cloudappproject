class AddTwitterHandleToManagerProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :manager_profiles, :twitterHandle, :string
    add_column :manager_profiles, :siteUrl, :string 

  end
end
