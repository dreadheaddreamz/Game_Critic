class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :description, :image_url, :upvotes, :downvotes
end
