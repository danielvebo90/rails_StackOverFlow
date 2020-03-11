class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true

      t.string :title
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
