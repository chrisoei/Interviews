class AddAppliedToPosting < ActiveRecord::Migration
  def self.up
    add_column :postings, :applied, :boolean
  end

  def self.down
    remove_column :postings, :applied
  end
end
