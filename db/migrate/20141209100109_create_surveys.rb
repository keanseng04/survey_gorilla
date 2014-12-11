class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name, null: false
      t.boolean :completed

      t.belongs_to :user
    end
  end
end
