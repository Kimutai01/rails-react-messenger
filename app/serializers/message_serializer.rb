class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :subject, :body
  has_one :sender
  has_one :recipient
end
