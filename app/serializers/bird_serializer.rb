class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :adventure_id
end
