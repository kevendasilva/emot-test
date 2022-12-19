class CreateComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :components do |t|
      t.string :name
      t.integer :kind
      t.integer :port
      t.integer :min_value
      t.integer :max_value

      t.timestamps
    end
  end
end
