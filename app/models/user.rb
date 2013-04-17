class User < ActiveRecord::Base
  attr_accessible :email, :library_id, :name, :password
  
end
