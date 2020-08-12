class CreateManagerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :manager_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :teamName
      t.text :description
      t.references :country, null: false, foreign_key: true
      t.string :managerFName
      t.string :managerLName
      t.text :sponsorsAndPartners
      t.boolean :lookingForPlayers

      t.timestamps
    end
  end
end
