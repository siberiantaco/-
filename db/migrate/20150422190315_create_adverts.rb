class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.text :content
      t.string :email

      t.timestamps
    end
  end
end
