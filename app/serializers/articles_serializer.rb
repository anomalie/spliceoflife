class ArticlesSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :picture, :audio
end
