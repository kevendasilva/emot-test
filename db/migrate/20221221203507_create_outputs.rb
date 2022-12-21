class CreateOutputs < ActiveRecord::Migration[7.0]
  def change
    create_table :outputs do |t|
      t.integer :value
      t.integer :kind
      t.references :component, null: false, foreign_key: true

      t.timestamps
    end
  end
end
