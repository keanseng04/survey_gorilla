class CreateSurveyanswers < ActiveRecord::Migration
  def change
    create_table :surveyanswers do |t|
      t.belongs_to :choice
      t.belongs_to :surveyvote
    end
  end
end
