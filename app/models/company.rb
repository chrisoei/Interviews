class Company < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :postings
  default_scope order("name")
end
