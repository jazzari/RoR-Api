# Fast JSON API approach

class ApplicationSerializer
  include FastJsonapi::ObjectSerializer
end

class ArticleSerializer < ApplicationSerializer
  attributes :title, :content, :slug
end




# ActiveModelSerializers approach
#class ArticleSerializer < ActiveModel::Serializer
#  attributes :id, :title, :content, :slug
#end
