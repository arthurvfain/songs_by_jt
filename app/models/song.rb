class Song < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :super_fans, through: :reviews

end
