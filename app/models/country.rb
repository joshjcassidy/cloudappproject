class Country < ApplicationRecord
    has_many :users, :dependent => :destroy

    @country = Country.all
end
