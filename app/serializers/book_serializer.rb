class BookSerializer < ActiveModel::Serializer
  attributes :id, :image, :author, :title
end
