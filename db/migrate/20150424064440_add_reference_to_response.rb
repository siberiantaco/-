class AddReferenceToResponse < ActiveRecord::Migration
  def change
    add_reference :responses, :advert, index: true
    add_foreign_key :responses, :adverts
  end
end
