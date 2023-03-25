class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :headline
      t.string :bio
      t.string :location
      t.string :profile_image
      t.string :social_github
      t.string :social_twitter
      t.string :social_linkedin
      t.string :social_youtube
      t.string :social_website
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
