class Photo < ApplicationRecord
  belongs_to :user
  has_many :tagged_user_relationships, class_name: 'PhotoTaggedUser'
end

# photo.tagged_user_relationships
