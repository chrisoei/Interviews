class Company < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :postings
  default_scope order("name")
end
