class AddCompanyIdToPostings < ActiveRecord::Migration
  def self.up
    add_column :postings, :company_id, :integer
  end

  def self.down
    remove_column :postings, :company_id
  end
end
