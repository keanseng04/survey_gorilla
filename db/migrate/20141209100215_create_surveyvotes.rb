class CreateSurveyvotes < ActiveRecord::Migration
  def change
    create_table :surveyvotes do |t|
      t.belongs_to :user
      t.belongs_to :survey
    end
  end
end
