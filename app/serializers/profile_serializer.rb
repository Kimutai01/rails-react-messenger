class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :headline, :bio, :location, :profile_image, :social_github, :social_twitter, :social_linkedin, :social_youtube, :social_website
  has_one :user
end
