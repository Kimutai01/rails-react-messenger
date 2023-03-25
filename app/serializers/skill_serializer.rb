class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :profile
end
