class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :slug

  has_many :birds
end
