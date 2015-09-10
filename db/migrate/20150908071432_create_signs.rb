class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
