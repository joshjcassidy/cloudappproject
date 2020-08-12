class CreateGames < ActiveRecord::Migration[6.0]
  def self.up
    create_table :games do |t|
      t.column :name, :string, :size => 80
      

    end
    Game.reset_column_information
    Game.create(:name => 'Apex Legends') 
    Game.create(:name => 'BlazBlue: Central Fiction') 
    Game.create(:name => 'BlazBlue: Cross Tag Battle') 
    Game.create(:name => 'Clash of Clans') 
    Game.create(:name => 'Counter-Strike: Global Offensive') 
    Game.create(:name => 'DOTA2') 
    Game.create(:name => 'Dragon Ball FighterZ') 
    Game.create(:name => 'Guilty Gear Xrd Rev2') 
    Game.create(:name => 'Hearthstone') 
    Game.create(:name => 'League of Legends') 
    Game.create(:name => 'Magic: The Gathering') 
    Game.create(:name => 'Mortal Kombat 11')
    Game.create(:name => 'Overwatch') 
    Game.create(:name => 'Quake') 
    Game.create(:name => 'Rainbow Six Siege') 
    Game.create(:name => 'Samurai Shodown')
    Game.create(:name => 'Soulcalibur VI')  
    Game.create(:name => 'Starcraft II') 
    Game.create(:name => 'Street Fighter V') 
    Game.create(:name => 'Super Smash Bros: Melee') 
    Game.create(:name => 'Super Smash Bros: Ultimate') 
    Game.create(:name => 'Tekken 7') 
    Game.create(:name => 'Under Night In-Birth') 
    Game.create(:name => 'Valorant') 
  end
  def self.down
    drop_table :countries
  end
end
