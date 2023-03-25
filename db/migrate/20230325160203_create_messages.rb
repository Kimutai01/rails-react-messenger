class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :sender, foreign_key: { to_table: :profiles }
      t.references :recipient, foreign_key: { to_table: :profiles }
      t.text :body

      t.timestamps
    end
  end
end
