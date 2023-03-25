class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :featured_image
      t.string :demo_link
      t.string :source_code
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
