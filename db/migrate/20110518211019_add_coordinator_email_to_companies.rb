class AddCoordinatorEmailToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :coordinator_email, :string
  end

  def self.down
    remove_column :companies, :coordinator_email
  end
end
