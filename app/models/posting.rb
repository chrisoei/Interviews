class Posting < ActiveRecord::Base
  belongs_to :company
  default_scope order("date DESC")
end
