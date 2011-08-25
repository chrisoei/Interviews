require 'lock'

class ApplicationController < ActionController::Base
  lock
#  protect_from_forgery
end
