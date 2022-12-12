class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_ur, :adventure_id
end
