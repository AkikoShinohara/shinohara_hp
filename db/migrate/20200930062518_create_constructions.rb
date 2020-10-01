class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string     :name 
      t.text       :message
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
