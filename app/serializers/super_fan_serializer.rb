class SuperFanSerializer < ActiveModel::Serializer
  attributes :id, :name, :years_of_fandom

  belongs_to :song
end
