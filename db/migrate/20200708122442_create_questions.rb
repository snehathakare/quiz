class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :difficulty
      t.text :title

      t.timestamps
    end
  end
end
