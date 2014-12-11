class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content, null: false

      t.belongs_to :survey
    end
  end
end
