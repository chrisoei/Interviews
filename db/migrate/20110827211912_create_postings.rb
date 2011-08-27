class CreatePostings < ActiveRecord::Migration
  def self.up
    create_table :postings do |t|
      t.string :title
      t.text :description
      t.string :company
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :postings
  end
end
