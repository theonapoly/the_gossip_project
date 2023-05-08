class Gossip < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :gossip_likes
  has_many :comments
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
end
