class SongReviewSerializer < ActiveModel::Serializer
  attributes :id, :super_fan, :song_id, :rating, :comment
  
  def super_fan
    SuperFan.find(self.object.super_fan_id).name
  end
  
end
