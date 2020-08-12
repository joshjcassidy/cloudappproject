class CreatePlayerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :player_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :playerTag
      t.text :bio
      t.string :firstName
      t.string :lastName
      t.date :dob
      t.references :country, null: false, foreign_key: true
      t.boolean :hasSponsor

      t.timestamps
    end
  end
end
