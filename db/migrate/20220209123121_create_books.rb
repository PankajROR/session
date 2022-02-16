class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.date :published_date
      t.boolean :is_published
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
