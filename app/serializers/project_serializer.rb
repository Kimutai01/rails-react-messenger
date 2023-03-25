class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :featured_image, :demo_link, :source_code
  has_one :profile
end
