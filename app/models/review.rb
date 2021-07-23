class Review < ApplicationRecord
    belongs_to :super_fan
    belongs_to :song

    validates :rating, inclusion: { in: 1..10 }
    validate :only_one_review

    def only_one_review
        if Review.where(song_id: self.song_id, super_fan_id: self.super_fan_id).count >= 1
            errors.add(:review_count, "only one review per song")
        end
    end
end
