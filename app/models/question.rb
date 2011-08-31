class Question < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :question
  validates_uniqueness_of :question
  default_scope order("name")
end
