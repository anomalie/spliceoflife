class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :picture
end
