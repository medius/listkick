class User < ActiveRecord::Base
  acts_as_authentic
  
  #has_and_belongs_to_many :lists
  has_many :lists
end


