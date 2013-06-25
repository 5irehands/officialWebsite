class Profile < ActiveRecord::Base
  attr_accessible :email, :name, :position
end
