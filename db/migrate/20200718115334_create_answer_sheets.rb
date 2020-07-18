class CreateAnswerSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_sheets do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :score
      t.jsonb :answers

      t.timestamps
    end
  end
end
