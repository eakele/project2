class ChangeDataType < ActiveRecord::Migration
  def change
    change_column(:contacts, :phone_mobile, :string)
    end
end
