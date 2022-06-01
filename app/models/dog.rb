class Dog < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1 }
    validates :age, presence: true
    validates :breed, presence: true, length: { minimum: 2 }
    validates :likes, length: { maximum: 200 }
    validates :dislikes, length: { maximum: 200 }
    has_one_attached :avatar
    validate :acceptable_image

    def acceptable_image
        if avatar.attached?
            unless avatar.byte_size <= 1.megabyte
                errors.add(:avatar, "is too big")
            end

            acceptable_types = ["image/jpeg", "image/png"]
            unless acceptable_types.include?(avatar.content_type)
                errors.add(:avatar, "must be a JPEG or PNG")
            end
            return
        end
    end
end


