class CreateFacts < ActiveRecord::Migration[5.1]
  def change
    create_table :facts do |t|
      t.string :title
      t.text :fact

      t.timestamps
    end
  end
end
