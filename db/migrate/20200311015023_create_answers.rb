class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|

      t.references :user, foreign_key: true
      t.references :question, foreign_key: true

      t.string :body
      t.integer :rating

      t.timestamps
    end
  end
end
