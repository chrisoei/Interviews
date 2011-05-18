class AddCoordinatorPhoneToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :coordinator_phone, :string
  end

  def self.down
    remove_column :companies, :coordinator_phone
  end
end
