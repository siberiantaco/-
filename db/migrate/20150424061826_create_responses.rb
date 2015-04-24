class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :email
      t.text :content

      t.timestamps null: false
    end
  end
end
