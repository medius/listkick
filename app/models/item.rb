class Item < ActiveRecord::Base
  attr_accessible :name, :active
  
  belongs_to :list
end
