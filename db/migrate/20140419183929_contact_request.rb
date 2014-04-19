class ContactRequest < ActiveRecord::Migration
  def change
    create_table :contact_requests do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.text :message, :null => false

      t.timestamps
    end
  end
end
