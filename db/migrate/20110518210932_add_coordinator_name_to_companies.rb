class AddCoordinatorNameToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :coordinator_name, :string
  end

  def self.down
    remove_column :companies, :coordinator_name
  end
end
