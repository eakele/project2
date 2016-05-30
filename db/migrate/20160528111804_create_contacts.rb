class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_mobile
      t.integer :phone_work
      t.string :street
      t.string :city
      t.integer :zip_postal_code
      t.string :state_province
      t.string :country_region
      t.string :nick_name
      t.string :personal_web_page

      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps null: false


    end
  end
end
