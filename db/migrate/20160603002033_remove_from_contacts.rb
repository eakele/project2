class RemoveFromContacts < ActiveRecord::Migration
  def self.up
    remove_column :contacts, :phone_work, :integer
    remove_column :contacts, :street, :string
    remove_column :contacts, :city, :string
    remove_column :contacts, :zip_postal_code, :integer
    remove_column :contacts, :state_province, :string
    remove_column :contacts, :country_region, :string
    remove_column :contacts, :nick_name, :string
    remove_column :contacts, :personal_web_page, :string

  end
end
