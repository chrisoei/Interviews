class Question < ActiveRecord::Base
  attr_accessible :name, :question
  validates :name, :presence => true, :uniqueness => true
  validates :question, :presence => true, :uniqueness => true
  default_scope order("name")
end
