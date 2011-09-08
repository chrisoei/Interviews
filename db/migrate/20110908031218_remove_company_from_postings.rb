class RemoveCompanyFromPostings < ActiveRecord::Migration
  def self.up
    remove_column :postings, :company
  end

  def self.down
    add_column :postings, :company, :string
  end
end
